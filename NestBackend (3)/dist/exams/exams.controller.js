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
Object.defineProperty(exports, "__esModule", { value: true });
exports.ExamsController = void 0;
const common_1 = require("@nestjs/common");
const exams_service_1 = require("./exams.service");
const exam_dto_1 = require("./dto/exam.dto");
const swagger_1 = require("@nestjs/swagger");
const roles_decorator_1 = require("../auth/decorators/roles.decorator");
const user_schema_1 = require("../users/schemas/user.schema");
let ExamsController = class ExamsController {
    constructor(examsService) {
        this.examsService = examsService;
    }
    async createExam(createExamDto) {
        return this.examsService.createExam(createExamDto);
    }
    async findAllExams(query) {
        return this.examsService.findAllExams(query);
    }
    async findExamById(id) {
        return this.examsService.findExamById(id);
    }
    async updateExam(id, updateExamDto) {
        return this.examsService.updateExam(id, updateExamDto);
    }
    async removeExam(id) {
        return this.examsService.removeExam(id);
    }
    async addQuestion(examId, createQuestionDto) {
        return this.examsService.addQuestion(examId, createQuestionDto);
    }
    async findAllQuestions(examId) {
        return this.examsService.findAllQuestions(examId);
    }
    async findQuestionById(examId, questionId) {
        return this.examsService.findQuestionById(examId, questionId);
    }
    async updateQuestion(examId, questionId, updateQuestionDto) {
        return this.examsService.updateQuestion(examId, questionId, updateQuestionDto);
    }
    async removeQuestion(examId, questionId) {
        return this.examsService.removeQuestion(examId, questionId);
    }
};
exports.ExamsController = ExamsController;
__decorate([
    (0, common_1.Post)(),
    (0, roles_decorator_1.Roles)(user_schema_1.Role.ADMIN),
    (0, swagger_1.ApiOperation)({ summary: 'Create a new exam' }),
    (0, swagger_1.ApiResponse)({ status: 201, description: 'Exam successfully created' }),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [exam_dto_1.CreateExamDto]),
    __metadata("design:returntype", Promise)
], ExamsController.prototype, "createExam", null);
__decorate([
    (0, common_1.Get)(),
    (0, swagger_1.ApiOperation)({ summary: 'Get all exams' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Return all exams' }),
    __param(0, (0, common_1.Query)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [exam_dto_1.ExamQueryDto]),
    __metadata("design:returntype", Promise)
], ExamsController.prototype, "findAllExams", null);
__decorate([
    (0, common_1.Get)(':id'),
    (0, swagger_1.ApiOperation)({ summary: 'Get an exam by ID' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Return the exam' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Exam not found' }),
    __param(0, (0, common_1.Param)('id')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", Promise)
], ExamsController.prototype, "findExamById", null);
__decorate([
    (0, common_1.Put)(':id'),
    (0, roles_decorator_1.Roles)(user_schema_1.Role.ADMIN),
    (0, swagger_1.ApiOperation)({ summary: 'Update an exam' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Exam successfully updated' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Exam not found' }),
    __param(0, (0, common_1.Param)('id')),
    __param(1, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, exam_dto_1.UpdateExamDto]),
    __metadata("design:returntype", Promise)
], ExamsController.prototype, "updateExam", null);
__decorate([
    (0, common_1.Delete)(':id'),
    (0, roles_decorator_1.Roles)(user_schema_1.Role.ADMIN),
    (0, swagger_1.ApiOperation)({ summary: 'Delete an exam' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Exam successfully deleted' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Exam not found' }),
    __param(0, (0, common_1.Param)('id')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", Promise)
], ExamsController.prototype, "removeExam", null);
__decorate([
    (0, common_1.Post)(':examId/questions'),
    (0, roles_decorator_1.Roles)(user_schema_1.Role.ADMIN),
    (0, swagger_1.ApiOperation)({ summary: 'Add a question to an exam' }),
    (0, swagger_1.ApiResponse)({ status: 201, description: 'Question successfully added' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Exam not found' }),
    __param(0, (0, common_1.Param)('examId')),
    __param(1, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, exam_dto_1.CreateQuestionDto]),
    __metadata("design:returntype", Promise)
], ExamsController.prototype, "addQuestion", null);
__decorate([
    (0, common_1.Get)(':examId/questions'),
    (0, swagger_1.ApiOperation)({ summary: 'Get all questions for an exam' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Return all questions' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Exam not found' }),
    __param(0, (0, common_1.Param)('examId')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", Promise)
], ExamsController.prototype, "findAllQuestions", null);
__decorate([
    (0, common_1.Get)(':examId/questions/:questionId'),
    (0, swagger_1.ApiOperation)({ summary: 'Get a question by ID' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Return the question' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Question not found' }),
    __param(0, (0, common_1.Param)('examId')),
    __param(1, (0, common_1.Param)('questionId')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, String]),
    __metadata("design:returntype", Promise)
], ExamsController.prototype, "findQuestionById", null);
__decorate([
    (0, common_1.Put)(':examId/questions/:questionId'),
    (0, roles_decorator_1.Roles)(user_schema_1.Role.ADMIN),
    (0, swagger_1.ApiOperation)({ summary: 'Update a question' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Question successfully updated' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Question not found' }),
    __param(0, (0, common_1.Param)('examId')),
    __param(1, (0, common_1.Param)('questionId')),
    __param(2, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, String, exam_dto_1.UpdateQuestionDto]),
    __metadata("design:returntype", Promise)
], ExamsController.prototype, "updateQuestion", null);
__decorate([
    (0, common_1.Delete)(':examId/questions/:questionId'),
    (0, roles_decorator_1.Roles)(user_schema_1.Role.ADMIN),
    (0, swagger_1.ApiOperation)({ summary: 'Delete a question' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Question successfully deleted' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Question not found' }),
    __param(0, (0, common_1.Param)('examId')),
    __param(1, (0, common_1.Param)('questionId')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, String]),
    __metadata("design:returntype", Promise)
], ExamsController.prototype, "removeQuestion", null);
exports.ExamsController = ExamsController = __decorate([
    (0, swagger_1.ApiTags)('Exams'),
    (0, swagger_1.ApiBearerAuth)(),
    (0, common_1.Controller)('exams'),
    __metadata("design:paramtypes", [exams_service_1.ExamsService])
], ExamsController);
//# sourceMappingURL=exams.controller.js.map