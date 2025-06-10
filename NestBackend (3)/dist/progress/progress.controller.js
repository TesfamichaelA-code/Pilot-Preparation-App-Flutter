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
exports.ProgressController = void 0;
const common_1 = require("@nestjs/common");
const progress_service_1 = require("./progress.service");
const progress_dto_1 = require("./dto/progress.dto");
const swagger_1 = require("@nestjs/swagger");
let ProgressController = class ProgressController {
    constructor(progressService) {
        this.progressService = progressService;
    }
    async submitExamResult(examId, submitExamResultDto, req) {
        return this.progressService.submitExamResult(examId, submitExamResultDto, req.user._id);
    }
    async getUserExamResults(req, query) {
        return this.progressService.getUserExamResults(req.user._id, query);
    }
    async getUserExamResultByExam(examId, req) {
        return this.progressService.getUserExamResultByExam(examId, req.user._id);
    }
    async getUserProgressStats(req) {
        return this.progressService.getUserProgressStats(req.user._id);
    }
};
exports.ProgressController = ProgressController;
__decorate([
    (0, common_1.Post)('exams/:examId/submit'),
    (0, swagger_1.ApiOperation)({ summary: 'Submit exam results' }),
    (0, swagger_1.ApiResponse)({ status: 201, description: 'Exam results successfully submitted' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Exam not found' }),
    __param(0, (0, common_1.Param)('examId')),
    __param(1, (0, common_1.Body)()),
    __param(2, (0, common_1.Req)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, progress_dto_1.SubmitExamResultDto, Object]),
    __metadata("design:returntype", Promise)
], ProgressController.prototype, "submitExamResult", null);
__decorate([
    (0, common_1.Get)('exams'),
    (0, swagger_1.ApiOperation)({ summary: 'Get user exam results' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Return exam results' }),
    __param(0, (0, common_1.Req)()),
    __param(1, (0, common_1.Query)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object, progress_dto_1.ProgressQueryDto]),
    __metadata("design:returntype", Promise)
], ProgressController.prototype, "getUserExamResults", null);
__decorate([
    (0, common_1.Get)('exams/:examId'),
    (0, swagger_1.ApiOperation)({ summary: 'Get user results for a specific exam' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Return exam results' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Exam not found' }),
    __param(0, (0, common_1.Param)('examId')),
    __param(1, (0, common_1.Req)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, Object]),
    __metadata("design:returntype", Promise)
], ProgressController.prototype, "getUserExamResultByExam", null);
__decorate([
    (0, common_1.Get)('stats'),
    (0, swagger_1.ApiOperation)({ summary: 'Get user progress statistics' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Return progress statistics' }),
    __param(0, (0, common_1.Req)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", Promise)
], ProgressController.prototype, "getUserProgressStats", null);
exports.ProgressController = ProgressController = __decorate([
    (0, swagger_1.ApiTags)('Progress'),
    (0, swagger_1.ApiBearerAuth)(),
    (0, common_1.Controller)('progress'),
    __metadata("design:paramtypes", [progress_service_1.ProgressService])
], ProgressController);
//# sourceMappingURL=progress.controller.js.map