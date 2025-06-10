import { OnModuleInit } from '@nestjs/common';
import { Model } from 'mongoose';
import { UserDocument } from '../users/schemas/user.schema';
import { ExamDocument } from '../exams/schemas/exam.schema';
import { QuestionDocument } from '../exams/schemas/question.schema';
import { ExamResultDocument } from '../progress/schemas/exam-result.schema';
export declare class SeedService implements OnModuleInit {
    private userModel;
    private examModel;
    private questionModel;
    private examResultModel;
    constructor(userModel: Model<UserDocument>, examModel: Model<ExamDocument>, questionModel: Model<QuestionDocument>, examResultModel: Model<ExamResultDocument>);
    onModuleInit(): any;
    private seedUsers;
    private seedExams;
    private seedQuestions;
    private seedExamResults;
}
