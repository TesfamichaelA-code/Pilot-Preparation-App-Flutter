import { InterviewCategory, InterviewDifficulty } from '../schemas/interview-question.schema';
export declare class CreateInterviewQuestionDto {
    question: string;
    sampleAnswer?: string;
    category?: InterviewCategory;
    difficulty?: InterviewDifficulty;
    tipsForAnswering?: string;
    yearAsked?: number;
}
export declare class UpdateInterviewQuestionDto {
    question?: string;
    sampleAnswer?: string;
    category?: InterviewCategory;
    difficulty?: InterviewDifficulty;
    tipsForAnswering?: string;
    yearAsked?: number;
}
export declare class InterviewQueryDto {
    category?: InterviewCategory;
    difficulty?: InterviewDifficulty;
    limit?: number;
    skip?: number;
}
