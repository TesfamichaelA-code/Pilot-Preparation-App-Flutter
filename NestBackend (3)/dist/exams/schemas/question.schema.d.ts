import { Document } from 'mongoose';
export type QuestionDocument = Question & Document;
export declare class Question {
    examId: string;
    text: string;
    options: string[];
    correctAnswer: number;
    explanation: string;
}
export declare const QuestionSchema: any;
