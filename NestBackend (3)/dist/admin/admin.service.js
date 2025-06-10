"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
var _a, _b, _c, _d;
Object.defineProperty(exports, "__esModule", { value: true });
exports.AdminService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
const user_schema_1 = require("../users/schemas/user.schema");
const exam_result_schema_1 = require("../progress/schemas/exam-result.schema");
const exam_schema_1 = require("../exams/schemas/exam.schema");
const question_schema_1 = require("../exams/schemas/question.schema");
let AdminService = class AdminService {
    constructor(userModel, examResultModel, examModel, questionModel) {
        this.userModel = userModel;
        this.examResultModel = examResultModel;
        this.examModel = examModel;
        this.questionModel = questionModel;
    }
    async getAllStudents() {
        return this.userModel
            .find({ roles: { $in: [user_schema_1.Role.STUDENT] } })
            .select('_id name email createdAt')
            .sort({ createdAt: -1 })
            .exec();
    }
    async getStudentProgress(userId, query) {
        const user = await this.userModel.findById(userId).select('_id name email').exec();
        if (!user) {
            throw new common_1.NotFoundException(`User with ID ${userId} not found`);
        }
        const examResults = await this.examResultModel
            .find({ userId })
            .sort({ completedAt: -1 })
            .populate('examId', 'title difficulty category')
            .exec();
        const totalScore = examResults.reduce((sum, result) => sum + result.score, 0);
        const averageScore = examResults.length > 0 ? totalScore / examResults.length : 0;
        const progressOverTime = await this.calculateProgressOverTime(userId);
        const attemptsByCategory = await this.examResultModel.aggregate([
            { $match: { userId } },
            { $lookup: { from: 'exams', localField: 'examId', foreignField: '_id', as: 'exam' } },
            { $unwind: '$exam' },
            { $group: {
                    _id: '$exam.category',
                    count: { $sum: 1 },
                    averageScore: { $avg: '$score' }
                }
            },
            { $project: {
                    category: '$_id',
                    count: 1,
                    averageScore: 1,
                    _id: 0
                }
            }
        ]);
        const attemptsByDifficulty = await this.examResultModel.aggregate([
            { $match: { userId } },
            { $lookup: { from: 'exams', localField: 'examId', foreignField: '_id', as: 'exam' } },
            { $unwind: '$exam' },
            { $group: {
                    _id: '$exam.difficulty',
                    count: { $sum: 1 },
                    averageScore: { $avg: '$score' }
                }
            },
            { $project: {
                    difficulty: '$_id',
                    count: 1,
                    averageScore: 1,
                    _id: 0
                }
            }
        ]);
        return {
            user: {
                id: user._id.toString(),
                name: user.name,
                email: user.email,
            },
            examResults: examResults.map(result => {
                const examIdValue = result.examId;
                let examId = '';
                let examTitle = 'Unknown Exam';
                if (examIdValue) {
                    if (typeof examIdValue === 'object') {
                        if (examIdValue._id) {
                            examId = examIdValue._id.toString();
                        }
                        if (examIdValue.title) {
                            examTitle = examIdValue.title;
                        }
                    }
                    else {
                        examId = examIdValue.toString();
                    }
                }
                return {
                    id: result._id.toString(),
                    examId,
                    examTitle,
                    score: result.score,
                    totalQuestions: result.totalQuestions,
                    correctAnswers: result.correctAnswers,
                    completedAt: result.completedAt,
                };
            }),
            summary: {
                totalExamsTaken: examResults.length,
                averageScore,
                progressOverTime,
                attemptsByCategory,
                attemptsByDifficulty,
            }
        };
    }
    async getUserStatistics(query) {
        const totalUsers = await this.userModel.countDocuments().exec();
        const usersByRole = await this.userModel.aggregate([
            { $unwind: '$roles' },
            { $group: { _id: '$roles', count: { $sum: 1 } } },
            { $project: { role: '$_id', count: 1, _id: 0 } }
        ]);
        const thirtyDaysAgo = new Date();
        thirtyDaysAgo.setDate(thirtyDaysAgo.getDate() - 30);
        const newUsersLast30Days = await this.userModel
            .countDocuments({ createdAt: { $gte: thirtyDaysAgo } })
            .exec();
        const activeUsers = await this.examResultModel
            .distinct('userId', { completedAt: { $gte: thirtyDaysAgo } })
            .exec();
        const userEngagement = await this.examResultModel.aggregate([
            { $group: { _id: '$userId', examCount: { $sum: 1 } } },
            { $group: { _id: null, avgExamsPerUser: { $avg: '$examCount' } } }
        ]);
        const userRegistrationOverTime = await this.userModel.aggregate([
            {
                $group: {
                    _id: {
                        year: { $year: '$createdAt' },
                        month: { $month: '$createdAt' }
                    },
                    count: { $sum: 1 }
                }
            },
            {
                $project: {
                    _id: 0,
                    date: {
                        $dateFromParts: {
                            year: '$_id.year',
                            month: '$_id.month',
                            day: 1
                        }
                    },
                    count: 1
                }
            },
            { $sort: { date: 1 } }
        ]);
        return {
            totalUsers,
            usersByRole,
            newUsersLast30Days,
            activeUsers: activeUsers.length,
            userEngagement: userEngagement.length > 0
                ? userEngagement[0].avgExamsPerUser
                : 0,
            userRegistrationOverTime
        };
    }
    async getExamStatistics() {
        const totalExams = await this.examModel.countDocuments().exec();
        const totalQuestions = await this.questionModel.countDocuments().exec();
        const examsByCategory = await this.examModel.aggregate([
            { $group: { _id: '$category', count: { $sum: 1 } } },
            { $project: { category: '$_id', count: 1, _id: 0 } }
        ]);
        const examsByDifficulty = await this.examModel.aggregate([
            { $group: { _id: '$difficulty', count: { $sum: 1 } } },
            { $project: { difficulty: '$_id', count: 1, _id: 0 } }
        ]);
        const mostAttemptedExams = await this.examResultModel.aggregate([
            { $group: { _id: '$examId', attemptCount: { $sum: 1 } } },
            { $sort: { attemptCount: -1 } },
            { $limit: 5 },
            {
                $lookup: {
                    from: 'exams',
                    localField: '_id',
                    foreignField: '_id',
                    as: 'examDetails'
                }
            },
            { $unwind: '$examDetails' },
            {
                $project: {
                    _id: 0,
                    examId: '$_id',
                    title: '$examDetails.title',
                    attemptCount: 1
                }
            }
        ]);
        const hardestExams = await this.examResultModel.aggregate([
            { $group: {
                    _id: '$examId',
                    averageScore: { $avg: '$score' },
                    attemptCount: { $sum: 1 }
                }
            },
            { $match: { attemptCount: { $gte: 5 } } },
            { $sort: { averageScore: 1 } },
            { $limit: 5 },
            {
                $lookup: {
                    from: 'exams',
                    localField: '_id',
                    foreignField: '_id',
                    as: 'examDetails'
                }
            },
            { $unwind: '$examDetails' },
            {
                $project: {
                    _id: 0,
                    examId: '$_id',
                    title: '$examDetails.title',
                    averageScore: 1,
                    attemptCount: 1
                }
            }
        ]);
        return {
            totalExams,
            totalQuestions,
            examsByCategory,
            examsByDifficulty,
            mostAttemptedExams,
            hardestExams
        };
    }
    async getOverallStatistics() {
        const totalUsers = await this.userModel.countDocuments().exec();
        const totalExams = await this.examModel.countDocuments().exec();
        const totalExamAttempts = await this.examResultModel.countDocuments().exec();
        const averageScoreResult = await this.examResultModel.aggregate([
            { $group: { _id: null, averageScore: { $avg: '$score' } } }
        ]);
        const averageScore = averageScoreResult.length > 0
            ? averageScoreResult[0].averageScore
            : 0;
        const activityOverTime = await this.examResultModel.aggregate([
            {
                $group: {
                    _id: {
                        year: { $year: '$completedAt' },
                        month: { $month: '$completedAt' }
                    },
                    count: { $sum: 1 }
                }
            },
            {
                $project: {
                    _id: 0,
                    date: {
                        $dateFromParts: {
                            year: '$_id.year',
                            month: '$_id.month',
                            day: 1
                        }
                    },
                    count: 1
                }
            },
            { $sort: { date: 1 } }
        ]);
        return {
            totalUsers,
            totalExams,
            totalExamAttempts,
            averageScore,
            activityOverTime
        };
    }
    async calculateProgressOverTime(userId) {
        return this.examResultModel.aggregate([
            { $match: { userId } },
            {
                $group: {
                    _id: {
                        year: { $year: '$completedAt' },
                        month: { $month: '$completedAt' }
                    },
                    averageScore: { $avg: '$score' },
                    count: { $sum: 1 }
                }
            },
            {
                $project: {
                    _id: 0,
                    date: {
                        $dateFromParts: {
                            year: '$_id.year',
                            month: '$_id.month',
                            day: 1
                        }
                    },
                    averageScore: 1,
                    count: 1
                }
            },
            { $sort: { date: 1 } }
        ]);
    }
};
exports.AdminService = AdminService;
exports.AdminService = AdminService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)(user_schema_1.User.name)),
    __param(1, (0, mongoose_1.InjectModel)(exam_result_schema_1.ExamResult.name)),
    __param(2, (0, mongoose_1.InjectModel)(exam_schema_1.Exam.name)),
    __param(3, (0, mongoose_1.InjectModel)(question_schema_1.Question.name)),
    __metadata("design:paramtypes", [typeof (_a = typeof mongoose_2.Model !== "undefined" && mongoose_2.Model) === "function" ? _a : Object, typeof (_b = typeof mongoose_2.Model !== "undefined" && mongoose_2.Model) === "function" ? _b : Object, typeof (_c = typeof mongoose_2.Model !== "undefined" && mongoose_2.Model) === "function" ? _c : Object, typeof (_d = typeof mongoose_2.Model !== "undefined" && mongoose_2.Model) === "function" ? _d : Object])
], AdminService);
//# sourceMappingURL=admin.service.js.map