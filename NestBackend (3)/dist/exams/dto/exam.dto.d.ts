import { ExamCategory, Difficulty } from '../schemas/exam.schema';
export declare class CreateExamDto {
    title: string;
    description?: string;
    category?: ExamCategory;
    difficulty?: Difficulty;
    durationMinutes?: number;
    isActive?: boolean;
}
export declare class UpdateExamDto {
    title?: string;
    description?: string;
    category?: ExamCategory;
    difficulty?: Difficulty;
    durationMinutes?: number;
    isActive?: boolean;
}
export declare class ExamQueryDto {
    category?: ExamCategory;
    difficulty?: Difficulty;
    limit?: number;
    skip?: number;
}
export declare class CreateQuestionDto {
    text: string;
    options: string[];
    correctAnswer: number;
    explanation?: string;
}
export declare class UpdateQuestionDto {
    text?: string;
    options?: string[];
    correctAnswer?: number;
    explanation?: string;
}
