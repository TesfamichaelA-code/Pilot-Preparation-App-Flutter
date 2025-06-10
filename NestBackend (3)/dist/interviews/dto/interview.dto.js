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
Object.defineProperty(exports, "__esModule", { value: true });
exports.InterviewQueryDto = exports.UpdateInterviewQuestionDto = exports.CreateInterviewQuestionDto = void 0;
const class_validator_1 = require("class-validator");
const swagger_1 = require("@nestjs/swagger");
const interview_question_schema_1 = require("../schemas/interview-question.schema");
class CreateInterviewQuestionDto {
}
exports.CreateInterviewQuestionDto = CreateInterviewQuestionDto;
__decorate([
    (0, swagger_1.ApiProperty)({ example: 'Describe a situation where you had to make a difficult decision under pressure.' }),
    (0, class_validator_1.IsNotEmpty)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], CreateInterviewQuestionDto.prototype, "question", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({
        example: 'During a training flight, I experienced a simulated engine failure...',
        required: false
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], CreateInterviewQuestionDto.prototype, "sampleAnswer", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ enum: interview_question_schema_1.InterviewCategory, example: interview_question_schema_1.InterviewCategory.SITUATIONAL }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(interview_question_schema_1.InterviewCategory),
    __metadata("design:type", String)
], CreateInterviewQuestionDto.prototype, "category", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ enum: interview_question_schema_1.InterviewDifficulty, example: interview_question_schema_1.InterviewDifficulty.MEDIUM }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(interview_question_schema_1.InterviewDifficulty),
    __metadata("design:type", String)
], CreateInterviewQuestionDto.prototype, "difficulty", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({
        example: 'Focus on the STAR method - Situation, Task, Action, Result',
        required: false
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], CreateInterviewQuestionDto.prototype, "tipsForAnswering", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ example: 2023, required: false }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsNumber)(),
    (0, class_validator_1.IsInt)(),
    (0, class_validator_1.Min)(2000),
    (0, class_validator_1.Max)(new Date().getFullYear()),
    __metadata("design:type", Number)
], CreateInterviewQuestionDto.prototype, "yearAsked", void 0);
class UpdateInterviewQuestionDto {
}
exports.UpdateInterviewQuestionDto = UpdateInterviewQuestionDto;
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], UpdateInterviewQuestionDto.prototype, "question", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], UpdateInterviewQuestionDto.prototype, "sampleAnswer", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ enum: interview_question_schema_1.InterviewCategory, required: false }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(interview_question_schema_1.InterviewCategory),
    __metadata("design:type", String)
], UpdateInterviewQuestionDto.prototype, "category", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ enum: interview_question_schema_1.InterviewDifficulty, required: false }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(interview_question_schema_1.InterviewDifficulty),
    __metadata("design:type", String)
], UpdateInterviewQuestionDto.prototype, "difficulty", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], UpdateInterviewQuestionDto.prototype, "tipsForAnswering", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsNumber)(),
    (0, class_validator_1.IsInt)(),
    (0, class_validator_1.Min)(2000),
    (0, class_validator_1.Max)(new Date().getFullYear()),
    __metadata("design:type", Number)
], UpdateInterviewQuestionDto.prototype, "yearAsked", void 0);
class InterviewQueryDto {
}
exports.InterviewQueryDto = InterviewQueryDto;
__decorate([
    (0, swagger_1.ApiProperty)({ enum: interview_question_schema_1.InterviewCategory, required: false }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(interview_question_schema_1.InterviewCategory),
    __metadata("design:type", String)
], InterviewQueryDto.prototype, "category", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ enum: interview_question_schema_1.InterviewDifficulty, required: false }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(interview_question_schema_1.InterviewDifficulty),
    __metadata("design:type", String)
], InterviewQueryDto.prototype, "difficulty", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false, default: 10 }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsInt)(),
    (0, class_validator_1.Min)(1),
    (0, class_validator_1.Max)(100),
    __metadata("design:type", Number)
], InterviewQueryDto.prototype, "limit", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false, default: 0 }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsInt)(),
    (0, class_validator_1.Min)(0),
    __metadata("design:type", Number)
], InterviewQueryDto.prototype, "skip", void 0);
//# sourceMappingURL=interview.dto.js.map