import { ExamsService } from './exams.service';
import { CreateExamDto, UpdateExamDto, CreateQuestionDto, UpdateQuestionDto, ExamQueryDto } from './dto/exam.dto';
export declare class ExamsController {
    private readonly examsService;
    constructor(examsService: ExamsService);
    createExam(createExamDto: CreateExamDto): unknown;
    findAllExams(query: ExamQueryDto): unknown;
    findExamById(id: string): unknown;
    updateExam(id: string, updateExamDto: UpdateExamDto): unknown;
    removeExam(id: string): unknown;
    addQuestion(examId: string, createQuestionDto: CreateQuestionDto): unknown;
    findAllQuestions(examId: string): unknown;
    findQuestionById(examId: string, questionId: string): unknown;
    updateQuestion(examId: string, questionId: string, updateQuestionDto: UpdateQuestionDto): unknown;
    removeQuestion(examId: string, questionId: string): unknown;
}
