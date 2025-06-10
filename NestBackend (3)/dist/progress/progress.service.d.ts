import { Model } from 'mongoose';
import { ExamResultDocument } from './schemas/exam-result.schema';
import { ExamsService } from '../exams/exams.service';
import { SubmitExamResultDto, ProgressQueryDto } from './dto/progress.dto';
export declare class ProgressService {
    private examResultModel;
    private examsService;
    constructor(examResultModel: Model<ExamResultDocument>, examsService: ExamsService);
    submitExamResult(examId: string, submitExamResultDto: SubmitExamResultDto, userId: string): Promise<ExamResultDocument>;
    getUserExamResults(userId: string, query: ProgressQueryDto): Promise<ExamResultDocument[]>;
    getUserExamResultByExam(examId: string, userId: string): Promise<ExamResultDocument[]>;
    getUserProgressStats(userId: string): Promise<any>;
    private calculateProgressOverTime;
}
