import { Model } from 'mongoose';
import { UserDocument } from '../users/schemas/user.schema';
import { ExamResultDocument } from '../progress/schemas/exam-result.schema';
import { ExamDocument } from '../exams/schemas/exam.schema';
import { QuestionDocument } from '../exams/schemas/question.schema';
import { StudentProgressQueryDto, UserStatisticsQueryDto, StudentProgressResponse, ExamStatisticsResponse, UserStatisticsResponse, OverallStatisticsResponse } from './dto/admin.dto';
export declare class AdminService {
    private userModel;
    private examResultModel;
    private examModel;
    private questionModel;
    constructor(userModel: Model<UserDocument>, examResultModel: Model<ExamResultDocument>, examModel: Model<ExamDocument>, questionModel: Model<QuestionDocument>);
    getAllStudents(): unknown;
    getStudentProgress(userId: string, query: StudentProgressQueryDto): Promise<StudentProgressResponse>;
    getUserStatistics(query: UserStatisticsQueryDto): Promise<UserStatisticsResponse>;
    getExamStatistics(): Promise<ExamStatisticsResponse>;
    getOverallStatistics(): Promise<OverallStatisticsResponse>;
    private calculateProgressOverTime;
}
