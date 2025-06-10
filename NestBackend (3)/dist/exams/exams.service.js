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
var _a, _b;
Object.defineProperty(exports, "__esModule", { value: true });
exports.ExamsService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
const exam_schema_1 = require("./schemas/exam.schema");
const question_schema_1 = require("./schemas/question.schema");
let ExamsService = class ExamsService {
    constructor(examModel, questionModel) {
        this.examModel = examModel;
        this.questionModel = questionModel;
    }
    async createExam(createExamDto) {
        const createdExam = new this.examModel(createExamDto);
        return createdExam.save();
    }
    async findAllExams(query) {
        const { category, difficulty, limit = 10, skip = 0 } = query;
        const filter = {};
        if (category)
            filter.category = category;
        if (difficulty)
            filter.difficulty = difficulty;
        return this.examModel
            .find(filter)
            .skip(skip)
            .limit(limit)
            .exec();
    }
    async findExamById(id) {
        const exam = await this.examModel.findById(id).exec();
        if (!exam) {
            throw new common_1.NotFoundException(`Exam with ID ${id} not found`);
        }
        return exam;
    }
    async updateExam(id, updateExamDto) {
        const updatedExam = await this.examModel
            .findByIdAndUpdate(id, updateExamDto, { new: true })
            .exec();
        if (!updatedExam) {
            throw new common_1.NotFoundException(`Exam with ID ${id} not found`);
        }
        return updatedExam;
    }
    async removeExam(id) {
        await this.questionModel.deleteMany({ examId: id }).exec();
        const result = await this.examModel.deleteOne({ _id: id }).exec();
        if (result.deletedCount === 0) {
            throw new common_1.NotFoundException(`Exam with ID ${id} not found`);
        }
        return { deleted: true };
    }
    async addQuestion(examId, createQuestionDto) {
        const exam = await this.findExamById(examId);
        const correctAnswerIndex = createQuestionDto.correctAnswer;
        if (correctAnswerIndex < 0 || correctAnswerIndex >= createQuestionDto.options.length) {
            throw new common_1.BadRequestException('Correct answer index is out of range');
        }
        const question = new this.questionModel(Object.assign(Object.assign({}, createQuestionDto), { examId }));
        return question.save();
    }
    async findAllQuestions(examId) {
        await this.findExamById(examId);
        return this.questionModel.find({ examId }).exec();
    }
    async findQuestionById(examId, questionId) {
        const question = await this.questionModel.findOne({ _id: questionId, examId }).exec();
        if (!question) {
            throw new common_1.NotFoundException(`Question with ID ${questionId} not found in exam ${examId}`);
        }
        return question;
    }
    async updateQuestion(examId, questionId, updateQuestionDto) {
        if (updateQuestionDto.options && updateQuestionDto.correctAnswer !== undefined) {
            if (updateQuestionDto.correctAnswer < 0 ||
                updateQuestionDto.correctAnswer >= updateQuestionDto.options.length) {
                throw new common_1.BadRequestException('Correct answer index is out of range');
            }
        }
        if (updateQuestionDto.correctAnswer !== undefined && !updateQuestionDto.options) {
            const question = await this.findQuestionById(examId, questionId);
            if (updateQuestionDto.correctAnswer < 0 ||
                updateQuestionDto.correctAnswer >= question.options.length) {
                throw new common_1.BadRequestException('Correct answer index is out of range');
            }
        }
        const updatedQuestion = await this.questionModel
            .findOneAndUpdate({ _id: questionId, examId }, updateQuestionDto, { new: true })
            .exec();
        if (!updatedQuestion) {
            throw new common_1.NotFoundException(`Question with ID ${questionId} not found in exam ${examId}`);
        }
        return updatedQuestion;
    }
    async removeQuestion(examId, questionId) {
        const result = await this.questionModel
            .deleteOne({ _id: questionId, examId })
            .exec();
        if (result.deletedCount === 0) {
            throw new common_1.NotFoundException(`Question with ID ${questionId} not found in exam ${examId}`);
        }
        return { deleted: true };
    }
};
exports.ExamsService = ExamsService;
exports.ExamsService = ExamsService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)(exam_schema_1.Exam.name)),
    __param(1, (0, mongoose_1.InjectModel)(question_schema_1.Question.name)),
    __metadata("design:paramtypes", [typeof (_a = typeof mongoose_2.Model !== "undefined" && mongoose_2.Model) === "function" ? _a : Object, typeof (_b = typeof mongoose_2.Model !== "undefined" && mongoose_2.Model) === "function" ? _b : Object])
], ExamsService);
//# sourceMappingURL=exams.service.js.map