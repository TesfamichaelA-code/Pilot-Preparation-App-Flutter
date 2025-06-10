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
exports.ExamSchema = exports.Exam = exports.Difficulty = exports.ExamCategory = void 0;
const mongoose_1 = require("@nestjs/mongoose");
var ExamCategory;
(function (ExamCategory) {
    ExamCategory["PILOT_TRAINEE"] = "pilotTrainee";
    ExamCategory["FLIGHT_INSTRUCTOR"] = "flightInstructor";
})(ExamCategory || (exports.ExamCategory = ExamCategory = {}));
var Difficulty;
(function (Difficulty) {
    Difficulty["EASY"] = "easy";
    Difficulty["MEDIUM"] = "medium";
    Difficulty["HARD"] = "hard";
})(Difficulty || (exports.Difficulty = Difficulty = {}));
let Exam = class Exam {
};
exports.Exam = Exam;
__decorate([
    (0, mongoose_1.Prop)({ required: true }),
    __metadata("design:type", String)
], Exam.prototype, "title", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Exam.prototype, "description", void 0);
__decorate([
    (0, mongoose_1.Prop)({
        type: String,
        enum: ExamCategory,
        default: ExamCategory.PILOT_TRAINEE
    }),
    __metadata("design:type", String)
], Exam.prototype, "category", void 0);
__decorate([
    (0, mongoose_1.Prop)({
        type: String,
        enum: Difficulty,
        default: Difficulty.MEDIUM
    }),
    __metadata("design:type", String)
], Exam.prototype, "difficulty", void 0);
__decorate([
    (0, mongoose_1.Prop)({ default: 0 }),
    __metadata("design:type", Number)
], Exam.prototype, "durationMinutes", void 0);
__decorate([
    (0, mongoose_1.Prop)({ default: true }),
    __metadata("design:type", Boolean)
], Exam.prototype, "isActive", void 0);
exports.Exam = Exam = __decorate([
    (0, mongoose_1.Schema)({ timestamps: true })
], Exam);
exports.ExamSchema = mongoose_1.SchemaFactory.createForClass(Exam);
//# sourceMappingURL=exam.schema.js.map