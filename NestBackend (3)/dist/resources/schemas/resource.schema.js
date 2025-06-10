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
var _a;
Object.defineProperty(exports, "__esModule", { value: true });
exports.ResourceSchema = exports.Resource = exports.ResourceCategory = exports.ResourceType = void 0;
const mongoose_1 = require("@nestjs/mongoose");
var ResourceType;
(function (ResourceType) {
    ResourceType["VIDEO"] = "video";
    ResourceType["DOCUMENT"] = "document";
    ResourceType["AUDIO"] = "audio";
    ResourceType["LINK"] = "link";
    ResourceType["IMAGE"] = "image";
})(ResourceType || (exports.ResourceType = ResourceType = {}));
var ResourceCategory;
(function (ResourceCategory) {
    ResourceCategory["FLIGHT_THEORY"] = "flightTheory";
    ResourceCategory["AIRCRAFT_SYSTEMS"] = "aircraftSystems";
    ResourceCategory["NAVIGATION"] = "navigation";
    ResourceCategory["METEOROLOGY"] = "meteorology";
    ResourceCategory["REGULATIONS"] = "regulations";
    ResourceCategory["HUMAN_FACTORS"] = "humanFactors";
    ResourceCategory["ETHIOPIAN_AIRLINES"] = "ethiopianAirlines";
    ResourceCategory["INTERVIEW_PREP"] = "interviewPrep";
})(ResourceCategory || (exports.ResourceCategory = ResourceCategory = {}));
let Resource = class Resource {
};
exports.Resource = Resource;
__decorate([
    (0, mongoose_1.Prop)({ required: true }),
    __metadata("design:type", String)
], Resource.prototype, "title", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Resource.prototype, "description", void 0);
__decorate([
    (0, mongoose_1.Prop)({ required: true, enum: ResourceType }),
    __metadata("design:type", String)
], Resource.prototype, "type", void 0);
__decorate([
    (0, mongoose_1.Prop)({ enum: ResourceCategory }),
    __metadata("design:type", String)
], Resource.prototype, "category", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Resource.prototype, "author", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", Array)
], Resource.prototype, "tags", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Resource.prototype, "fileUrl", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", Number)
], Resource.prototype, "fileSize", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Resource.prototype, "mimeType", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Resource.prototype, "externalUrl", void 0);
__decorate([
    (0, mongoose_1.Prop)({ default: true }),
    __metadata("design:type", Boolean)
], Resource.prototype, "isActive", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", typeof (_a = typeof Date !== "undefined" && Date) === "function" ? _a : Object)
], Resource.prototype, "publishedDate", void 0);
exports.Resource = Resource = __decorate([
    (0, mongoose_1.Schema)({ timestamps: true })
], Resource);
exports.ResourceSchema = mongoose_1.SchemaFactory.createForClass(Resource);
//# sourceMappingURL=resource.schema.js.map