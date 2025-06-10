import { Model } from 'mongoose';
import { ExamDocument } from './schemas/exam.schema';
import { QuestionDocument } from './schemas/question.schema';
import { CreateExamDto, UpdateExamDto, CreateQuestionDto, UpdateQuestionDto, ExamQueryDto } from './dto/exam.dto';
export declare class ExamsService {
    private examModel;
    private questionModel;
    constructor(examModel: Model<ExamDocument>, questionModel: Model<QuestionDocument>);
    createExam(createExamDto: CreateExamDto): Promise<ExamDocument>;
    findAllExams(query: ExamQueryDto): Promise<ExamDocument[]>;
    findExamById(id: string): Promise<ExamDocument>;
    updateExam(id: string, updateExamDto: UpdateExamDto): Promise<ExamDocument>;
    removeExam(id: string): Promise<{
        deleted: boolean;
    }>;
    addQuestion(examId: string, createQuestionDto: CreateQuestionDto): Promise<QuestionDocument>;
    findAllQuestions(examId: string): Promise<QuestionDocument[]>;
    findQuestionById(examId: string, questionId: string): Promise<QuestionDocument>;
    updateQuestion(examId: string, questionId: string, updateQuestionDto: UpdateQuestionDto): Promise<QuestionDocument>;
    removeQuestion(examId: string, questionId: string): Promise<{
        deleted: boolean;
    }>;
}
