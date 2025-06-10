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
exports.InterviewQuestionSchema = exports.InterviewQuestion = exports.InterviewDifficulty = exports.InterviewCategory = void 0;
const mongoose_1 = require("@nestjs/mongoose");
var InterviewCategory;
(function (InterviewCategory) {
    InterviewCategory["TECHNICAL"] = "technical";
    InterviewCategory["BEHAVIORAL"] = "behavioral";
    InterviewCategory["SITUATIONAL"] = "situational";
    InterviewCategory["PILOT_SPECIFIC"] = "pilotSpecific";
    InterviewCategory["FLIGHT_INSTRUCTOR"] = "flightInstructor";
})(InterviewCategory || (exports.InterviewCategory = InterviewCategory = {}));
var InterviewDifficulty;
(function (InterviewDifficulty) {
    InterviewDifficulty["EASY"] = "easy";
    InterviewDifficulty["MEDIUM"] = "medium";
    InterviewDifficulty["HARD"] = "hard";
})(InterviewDifficulty || (exports.InterviewDifficulty = InterviewDifficulty = {}));
let InterviewQuestion = class InterviewQuestion {
};
exports.InterviewQuestion = InterviewQuestion;
__decorate([
    (0, mongoose_1.Prop)({ required: true }),
    __metadata("design:type", String)
], InterviewQuestion.prototype, "question", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], InterviewQuestion.prototype, "sampleAnswer", void 0);
__decorate([
    (0, mongoose_1.Prop)({
        type: String,
        enum: InterviewCategory,
        default: InterviewCategory.TECHNICAL
    }),
    __metadata("design:type", String)
], InterviewQuestion.prototype, "category", void 0);
__decorate([
    (0, mongoose_1.Prop)({
        type: String,
        enum: InterviewDifficulty,
        default: InterviewDifficulty.MEDIUM
    }),
    __metadata("design:type", String)
], InterviewQuestion.prototype, "difficulty", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], InterviewQuestion.prototype, "tipsForAnswering", void 0);
__decorate([
    (0, mongoose_1.Prop)(),
    __metadata("design:type", Number)
], InterviewQuestion.prototype, "yearAsked", void 0);
exports.InterviewQuestion = InterviewQuestion = __decorate([
    (0, mongoose_1.Schema)({ timestamps: true })
], InterviewQuestion);
exports.InterviewQuestionSchema = mongoose_1.SchemaFactory.createForClass(InterviewQuestion);
//# sourceMappingURL=interview-question.schema.js.map