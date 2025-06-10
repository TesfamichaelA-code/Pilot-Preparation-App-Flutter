import { Document } from 'mongoose';
export type InterviewQuestionDocument = InterviewQuestion & Document;
export declare enum InterviewCategory {
    TECHNICAL = "technical",
    BEHAVIORAL = "behavioral",
    SITUATIONAL = "situational",
    PILOT_SPECIFIC = "pilotSpecific",
    FLIGHT_INSTRUCTOR = "flightInstructor"
}
export declare enum InterviewDifficulty {
    EASY = "easy",
    MEDIUM = "medium",
    HARD = "hard"
}
export declare class InterviewQuestion {
    question: string;
    sampleAnswer: string;
    category: InterviewCategory;
    difficulty: InterviewDifficulty;
    tipsForAnswering: string;
    yearAsked: number;
}
export declare const InterviewQuestionSchema: any;
