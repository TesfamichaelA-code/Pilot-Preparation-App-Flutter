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
var _a;
Object.defineProperty(exports, "__esModule", { value: true });
exports.ProgressService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
const exam_result_schema_1 = require("./schemas/exam-result.schema");
const exams_service_1 = require("../exams/exams.service");
let ProgressService = class ProgressService {
    constructor(examResultModel, examsService) {
        this.examResultModel = examResultModel;
        this.examsService = examsService;
    }
    async submitExamResult(examId, submitExamResultDto, userId) {
        const exam = await this.examsService.findExamById(examId);
        const questions = await this.examsService.findAllQuestions(examId);
        if (questions.length === 0) {
            throw new common_1.BadRequestException('Exam has no questions');
        }
        if (submitExamResultDto.answers.length !== questions.length) {
            throw new common_1.BadRequestException('Number of answers does not match number of questions');
        }
        let correctAnswers = 0;
        const answerDetails = questions.map((question, index) => {
            const isCorrect = question.correctAnswer === submitExamResultDto.answers[index];
            if (isCorrect)
                correctAnswers++;
            return {
                questionId: question._id,
                questionText: question.text,
                userAnswer: submitExamResultDto.answers[index],
                correctAnswer: question.correctAnswer,
                isCorrect,
            };
        });
        const score = (correctAnswers / questions.length) * 100;
        const examResult = new this.examResultModel({
            userId,
            examId,
            score,
            totalQuestions: questions.length,
            correctAnswers,
            answerDetails,
            completedAt: new Date(),
        });
        return examResult.save();
    }
    async getUserExamResults(userId, query) {
        const { limit = 10, skip = 0, sortBy = 'completedAt', sortDirection = 'desc' } = query;
        const sort = {};
        sort[sortBy] = sortDirection === 'asc' ? 1 : -1;
        return this.examResultModel
            .find({ userId })
            .sort(sort)
            .skip(skip)
            .limit(limit)
            .populate('examId', 'title category difficulty')
            .exec();
    }
    async getUserExamResultByExam(examId, userId) {
        await this.examsService.findExamById(examId);
        return this.examResultModel
            .find({ userId, examId })
            .sort({ completedAt: -1 })
            .exec();
    }
    async getUserProgressStats(userId) {
        const results = await this.examResultModel.find({ userId }).exec();
        if (results.length === 0) {
            return {
                totalExamsTaken: 0,
                averageScore: 0,
                highestScore: 0,
                lowestScore: 0,
                recentResults: [],
            };
        }
        const totalExamsTaken = results.length;
        const averageScore = results.reduce((sum, result) => sum + result.score, 0) / totalExamsTaken;
        const highestScore = Math.max(...results.map(result => result.score));
        const lowestScore = Math.min(...results.map(result => result.score));
        const recentResults = await this.examResultModel
            .find({ userId })
            .sort({ completedAt: -1 })
            .limit(5)
            .populate('examId', 'title category')
            .exec();
        const progressOverTime = await this.calculateProgressOverTime(userId);
        return {
            totalExamsTaken,
            averageScore,
            highestScore,
            lowestScore,
            recentResults,
            progressOverTime,
        };
    }
    async calculateProgressOverTime(userId) {
        const sixMonthsAgo = new Date();
        sixMonthsAgo.setMonth(sixMonthsAgo.getMonth() - 6);
        const results = await this.examResultModel
            .find({
            userId,
            completedAt: { $gte: sixMonthsAgo }
        })
            .sort({ completedAt: 1 })
            .exec();
        const monthlyData = results.reduce((acc, result) => {
            const month = new Date(result.completedAt).toISOString().substring(0, 7);
            if (!acc[month]) {
                acc[month] = {
                    month,
                    totalScore: 0,
                    count: 0,
                    averageScore: 0,
                };
            }
            acc[month].totalScore += result.score;
            acc[month].count += 1;
            acc[month].averageScore = acc[month].totalScore / acc[month].count;
            return acc;
        }, {});
        return Object.values(monthlyData).sort((a, b) => a.month.localeCompare(b.month));
    }
};
exports.ProgressService = ProgressService;
exports.ProgressService = ProgressService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)(exam_result_schema_1.ExamResult.name)),
    __metadata("design:paramtypes", [typeof (_a = typeof mongoose_2.Model !== "undefined" && mongoose_2.Model) === "function" ? _a : Object, exams_service_1.ExamsService])
], ProgressService);
//# sourceMappingURL=progress.service.js.map