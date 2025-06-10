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
exports.InterviewsController = void 0;
const common_1 = require("@nestjs/common");
const interviews_service_1 = require("./interviews.service");
const interview_dto_1 = require("./dto/interview.dto");
const swagger_1 = require("@nestjs/swagger");
const roles_decorator_1 = require("../auth/decorators/roles.decorator");
const user_schema_1 = require("../users/schemas/user.schema");
let InterviewsController = class InterviewsController {
    constructor(interviewsService) {
        this.interviewsService = interviewsService;
    }
    async create(createInterviewQuestionDto) {
        return this.interviewsService.create(createInterviewQuestionDto);
    }
    async findAll(query) {
        return this.interviewsService.findAll(query);
    }
    async findOne(id) {
        return this.interviewsService.findOne(id);
    }
    async update(id, updateInterviewQuestionDto) {
        return this.interviewsService.update(id, updateInterviewQuestionDto);
    }
    async remove(id) {
        return this.interviewsService.remove(id);
    }
};
exports.InterviewsController = InterviewsController;
__decorate([
    (0, common_1.Post)(),
    (0, roles_decorator_1.Roles)(user_schema_1.Role.ADMIN),
    (0, swagger_1.ApiOperation)({ summary: 'Create a new interview question' }),
    (0, swagger_1.ApiResponse)({ status: 201, description: 'Interview question successfully created' }),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [interview_dto_1.CreateInterviewQuestionDto]),
    __metadata("design:returntype", Promise)
], InterviewsController.prototype, "create", null);
__decorate([
    (0, common_1.Get)(),
    (0, swagger_1.ApiOperation)({ summary: 'Get all interview questions' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Return all interview questions' }),
    __param(0, (0, common_1.Query)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [interview_dto_1.InterviewQueryDto]),
    __metadata("design:returntype", Promise)
], InterviewsController.prototype, "findAll", null);
__decorate([
    (0, common_1.Get)(':id'),
    (0, swagger_1.ApiOperation)({ summary: 'Get an interview question by ID' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Return the interview question' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Interview question not found' }),
    __param(0, (0, common_1.Param)('id')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", Promise)
], InterviewsController.prototype, "findOne", null);
__decorate([
    (0, common_1.Put)(':id'),
    (0, roles_decorator_1.Roles)(user_schema_1.Role.ADMIN),
    (0, swagger_1.ApiOperation)({ summary: 'Update an interview question' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Interview question successfully updated' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Interview question not found' }),
    __param(0, (0, common_1.Param)('id')),
    __param(1, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, interview_dto_1.UpdateInterviewQuestionDto]),
    __metadata("design:returntype", Promise)
], InterviewsController.prototype, "update", null);
__decorate([
    (0, common_1.Delete)(':id'),
    (0, roles_decorator_1.Roles)(user_schema_1.Role.ADMIN),
    (0, swagger_1.ApiOperation)({ summary: 'Delete an interview question' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Interview question successfully deleted' }),
    (0, swagger_1.ApiResponse)({ status: 404, description: 'Interview question not found' }),
    __param(0, (0, common_1.Param)('id')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", Promise)
], InterviewsController.prototype, "remove", null);
exports.InterviewsController = InterviewsController = __decorate([
    (0, swagger_1.ApiTags)('Interviews'),
    (0, swagger_1.ApiBearerAuth)(),
    (0, common_1.Controller)('interviews'),
    __metadata("design:paramtypes", [interviews_service_1.InterviewsService])
], InterviewsController);
//# sourceMappingURL=interviews.controller.js.map