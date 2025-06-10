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
exports.AdminController = void 0;
const common_1 = require("@nestjs/common");
const admin_service_1 = require("./admin.service");
const jwt_auth_guard_1 = require("../auth/guards/jwt-auth.guard");
const roles_guard_1 = require("../auth/guards/roles.guard");
const roles_decorator_1 = require("../auth/decorators/roles.decorator");
const user_schema_1 = require("../users/schemas/user.schema");
const swagger_1 = require("@nestjs/swagger");
const admin_dto_1 = require("./dto/admin.dto");
let AdminController = class AdminController {
    constructor(adminService) {
        this.adminService = adminService;
    }
    async getAllStudents() {
        return this.adminService.getAllStudents();
    }
    async getStudentProgress(id, query) {
        return this.adminService.getStudentProgress(id, query);
    }
    async getUserStatistics(query) {
        return this.adminService.getUserStatistics(query);
    }
    async getExamStatistics() {
        return this.adminService.getExamStatistics();
    }
    async getOverallStatistics() {
        return this.adminService.getOverallStatistics();
    }
};
exports.AdminController = AdminController;
__decorate([
    (0, common_1.Get)('students'),
    (0, swagger_1.ApiOperation)({ summary: 'Get all students with basic info (admin only)' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Returns a list of all students' }),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", Promise)
], AdminController.prototype, "getAllStudents", null);
__decorate([
    (0, common_1.Get)('students/:id/progress'),
    (0, swagger_1.ApiOperation)({ summary: 'Get detailed progress of a specific student (admin only)' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Returns detailed progress data for a student' }),
    __param(0, (0, common_1.Param)('id')),
    __param(1, (0, common_1.Query)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, admin_dto_1.StudentProgressQueryDto]),
    __metadata("design:returntype", Promise)
], AdminController.prototype, "getStudentProgress", null);
__decorate([
    (0, common_1.Get)('statistics/users'),
    (0, swagger_1.ApiOperation)({ summary: 'Get user statistics (admin only)' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Returns user statistics' }),
    __param(0, (0, common_1.Query)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [admin_dto_1.UserStatisticsQueryDto]),
    __metadata("design:returntype", Promise)
], AdminController.prototype, "getUserStatistics", null);
__decorate([
    (0, common_1.Get)('statistics/exams'),
    (0, swagger_1.ApiOperation)({ summary: 'Get exam statistics (admin only)' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Returns exam statistics' }),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", Promise)
], AdminController.prototype, "getExamStatistics", null);
__decorate([
    (0, common_1.Get)('statistics/overall'),
    (0, swagger_1.ApiOperation)({ summary: 'Get overall system statistics (admin only)' }),
    (0, swagger_1.ApiResponse)({ status: 200, description: 'Returns overall system statistics' }),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", Promise)
], AdminController.prototype, "getOverallStatistics", null);
exports.AdminController = AdminController = __decorate([
    (0, swagger_1.ApiTags)('admin'),
    (0, swagger_1.ApiBearerAuth)(),
    (0, common_1.Controller)('admin'),
    (0, common_1.UseGuards)(jwt_auth_guard_1.JwtAuthGuard, roles_guard_1.RolesGuard),
    (0, roles_decorator_1.Roles)(user_schema_1.Role.ADMIN),
    __metadata("design:paramtypes", [admin_service_1.AdminService])
], AdminController);
//# sourceMappingURL=admin.controller.js.map