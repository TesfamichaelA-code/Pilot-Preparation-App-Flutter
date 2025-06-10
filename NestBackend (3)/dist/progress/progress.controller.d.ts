import { ProgressService } from './progress.service';
import { SubmitExamResultDto, ProgressQueryDto } from './dto/progress.dto';
export declare class ProgressController {
    private readonly progressService;
    constructor(progressService: ProgressService);
    submitExamResult(examId: string, submitExamResultDto: SubmitExamResultDto, req: any): unknown;
    getUserExamResults(req: any, query: ProgressQueryDto): unknown;
    getUserExamResultByExam(examId: string, req: any): unknown;
    getUserProgressStats(req: any): unknown;
}
