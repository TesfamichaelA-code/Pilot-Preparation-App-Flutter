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
exports.UserStatisticsQueryDto = exports.StudentProgressQueryDto = void 0;
const swagger_1 = require("@nestjs/swagger");
const class_validator_1 = require("class-validator");
const class_transformer_1 = require("class-transformer");
const progress_dto_1 = require("../../progress/dto/progress.dto");
class StudentProgressQueryDto {
    constructor() {
        this.sortDirection = progress_dto_1.SortDirection.DESC;
    }
}
exports.StudentProgressQueryDto = StudentProgressQueryDto;
__decorate([
    (0, swagger_1.ApiProperty)({ required: false, description: 'Start date for filtering exam results' }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], StudentProgressQueryDto.prototype, "startDate", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false, description: 'End date for filtering exam results' }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], StudentProgressQueryDto.prototype, "endDate", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false, enum: progress_dto_1.SortDirection, default: progress_dto_1.SortDirection.DESC }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(progress_dto_1.SortDirection),
    __metadata("design:type", String)
], StudentProgressQueryDto.prototype, "sortDirection", void 0);
class UserStatisticsQueryDto {
    constructor() {
        this.days = 30;
    }
}
exports.UserStatisticsQueryDto = UserStatisticsQueryDto;
__decorate([
    (0, swagger_1.ApiProperty)({ required: false, description: 'Number of days to look back for statistics' }),
    (0, class_validator_1.IsOptional)(),
    (0, class_transformer_1.Type)(() => Number),
    (0, class_validator_1.IsNumber)(),
    (0, class_validator_1.Min)(1),
    (0, class_validator_1.Max)(365),
    __metadata("design:type", Number)
], UserStatisticsQueryDto.prototype, "days", void 0);
//# sourceMappingURL=admin.dto.js.map