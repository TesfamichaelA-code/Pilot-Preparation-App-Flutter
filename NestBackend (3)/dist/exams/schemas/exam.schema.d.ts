import { Document } from 'mongoose';
export type ExamDocument = Exam & Document;
export declare enum ExamCategory {
    PILOT_TRAINEE = "pilotTrainee",
    FLIGHT_INSTRUCTOR = "flightInstructor"
}
export declare enum Difficulty {
    EASY = "easy",
    MEDIUM = "medium",
    HARD = "hard"
}
export declare class Exam {
    title: string;
    description: string;
    category: ExamCategory;
    difficulty: Difficulty;
    durationMinutes: number;
    isActive: boolean;
}
export declare const ExamSchema: any;
