import { Document } from 'mongoose';
export type ExamResultDocument = ExamResult & Document;
export declare class AnswerDetail {
    questionId: string;
    questionText: string;
    userAnswer: number;
    correctAnswer: number;
    isCorrect: boolean;
}
export declare class ExamResult {
    userId: string;
    examId: string;
    score: number;
    totalQuestions: number;
    correctAnswers: number;
    answerDetails: AnswerDetail[];
    completedAt: Date;
}
export declare const ExamResultSchema: any;
