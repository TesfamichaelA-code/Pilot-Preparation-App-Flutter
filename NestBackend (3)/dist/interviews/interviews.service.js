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
exports.InterviewsService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
const interview_question_schema_1 = require("./schemas/interview-question.schema");
let InterviewsService = class InterviewsService {
    constructor(interviewQuestionModel) {
        this.interviewQuestionModel = interviewQuestionModel;
    }
    async create(createInterviewQuestionDto) {
        const createdQuestion = new this.interviewQuestionModel(createInterviewQuestionDto);
        return createdQuestion.save();
    }
    async findAll(query) {
        const { category, difficulty, limit = 10, skip = 0 } = query;
        const filter = {};
        if (category)
            filter.category = category;
        if (difficulty)
            filter.difficulty = difficulty;
        return this.interviewQuestionModel
            .find(filter)
            .skip(skip)
            .limit(limit)
            .exec();
    }
    async findOne(id) {
        const question = await this.interviewQuestionModel.findById(id).exec();
        if (!question) {
            throw new common_1.NotFoundException(`Interview question with ID ${id} not found`);
        }
        return question;
    }
    async update(id, updateInterviewQuestionDto) {
        const updatedQuestion = await this.interviewQuestionModel
            .findByIdAndUpdate(id, updateInterviewQuestionDto, { new: true })
            .exec();
        if (!updatedQuestion) {
            throw new common_1.NotFoundException(`Interview question with ID ${id} not found`);
        }
        return updatedQuestion;
    }
    async remove(id) {
        const result = await this.interviewQuestionModel.deleteOne({ _id: id }).exec();
        if (result.deletedCount === 0) {
            throw new common_1.NotFoundException(`Interview question with ID ${id} not found`);
        }
        return { deleted: true };
    }
};
exports.InterviewsService = InterviewsService;
exports.InterviewsService = InterviewsService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)(interview_question_schema_1.InterviewQuestion.name)),
    __metadata("design:paramtypes", [typeof (_a = typeof mongoose_2.Model !== "undefined" && mongoose_2.Model) === "function" ? _a : Object])
], InterviewsService);
//# sourceMappingURL=interviews.service.js.map