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
exports.ResourceQueryDto = exports.UpdateResourceDto = exports.CreateResourceDto = void 0;
const swagger_1 = require("@nestjs/swagger");
const class_validator_1 = require("class-validator");
const resource_schema_1 = require("../schemas/resource.schema");
class CreateResourceDto {
    constructor() {
        this.isActive = true;
    }
}
exports.CreateResourceDto = CreateResourceDto;
__decorate([
    (0, swagger_1.ApiProperty)({ description: 'Title of the resource' }),
    (0, class_validator_1.IsNotEmpty)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], CreateResourceDto.prototype, "title", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({ description: 'Description of the resource' }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], CreateResourceDto.prototype, "description", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({
        description: 'Type of resource',
        enum: resource_schema_1.ResourceType
    }),
    (0, class_validator_1.IsEnum)(resource_schema_1.ResourceType),
    __metadata("design:type", String)
], CreateResourceDto.prototype, "type", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Category of the resource',
        enum: resource_schema_1.ResourceCategory
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(resource_schema_1.ResourceCategory),
    __metadata("design:type", String)
], CreateResourceDto.prototype, "category", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({ description: 'Author of the resource' }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], CreateResourceDto.prototype, "author", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Tags to categorize the resource',
        type: [String]
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsArray)(),
    (0, class_validator_1.IsString)({ each: true }),
    __metadata("design:type", Array)
], CreateResourceDto.prototype, "tags", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'External URL for linked resources',
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsUrl)(),
    __metadata("design:type", String)
], CreateResourceDto.prototype, "externalUrl", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Whether the resource is active and visible to students',
        default: true
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsBoolean)(),
    __metadata("design:type", Boolean)
], CreateResourceDto.prototype, "isActive", void 0);
class UpdateResourceDto {
}
exports.UpdateResourceDto = UpdateResourceDto;
__decorate([
    (0, swagger_1.ApiPropertyOptional)({ description: 'Title of the resource' }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], UpdateResourceDto.prototype, "title", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({ description: 'Description of the resource' }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], UpdateResourceDto.prototype, "description", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Type of resource',
        enum: resource_schema_1.ResourceType
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(resource_schema_1.ResourceType),
    __metadata("design:type", String)
], UpdateResourceDto.prototype, "type", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Category of the resource',
        enum: resource_schema_1.ResourceCategory
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(resource_schema_1.ResourceCategory),
    __metadata("design:type", String)
], UpdateResourceDto.prototype, "category", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({ description: 'Author of the resource' }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], UpdateResourceDto.prototype, "author", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Tags to categorize the resource',
        type: [String]
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsArray)(),
    (0, class_validator_1.IsString)({ each: true }),
    __metadata("design:type", Array)
], UpdateResourceDto.prototype, "tags", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'External URL for linked resources',
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsUrl)(),
    __metadata("design:type", String)
], UpdateResourceDto.prototype, "externalUrl", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Whether the resource is active and visible to students'
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsBoolean)(),
    __metadata("design:type", Boolean)
], UpdateResourceDto.prototype, "isActive", void 0);
class ResourceQueryDto {
    constructor() {
        this.limit = 10;
        this.skip = 0;
    }
}
exports.ResourceQueryDto = ResourceQueryDto;
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Filter by resource type',
        enum: resource_schema_1.ResourceType
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(resource_schema_1.ResourceType),
    __metadata("design:type", String)
], ResourceQueryDto.prototype, "type", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Filter by resource category',
        enum: resource_schema_1.ResourceCategory
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsEnum)(resource_schema_1.ResourceCategory),
    __metadata("design:type", String)
], ResourceQueryDto.prototype, "category", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Search by title or description keyword'
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], ResourceQueryDto.prototype, "search", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Filter by tag',
    }),
    (0, class_validator_1.IsOptional)(),
    (0, class_validator_1.IsString)(),
    __metadata("design:type", String)
], ResourceQueryDto.prototype, "tag", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Limit number of results',
        default: 10
    }),
    (0, class_validator_1.IsOptional)(),
    __metadata("design:type", Number)
], ResourceQueryDto.prototype, "limit", void 0);
__decorate([
    (0, swagger_1.ApiPropertyOptional)({
        description: 'Skip number of results (for pagination)',
        default: 0
    }),
    (0, class_validator_1.IsOptional)(),
    __metadata("design:type", Number)
], ResourceQueryDto.prototype, "skip", void 0);
//# sourceMappingURL=resource.dto.js.map