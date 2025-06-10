import { Model } from 'mongoose';
import { InterviewQuestionDocument } from './schemas/interview-question.schema';
import { CreateInterviewQuestionDto, UpdateInterviewQuestionDto, InterviewQueryDto } from './dto/interview.dto';
export declare class InterviewsService {
    private interviewQuestionModel;
    constructor(interviewQuestionModel: Model<InterviewQuestionDocument>);
    create(createInterviewQuestionDto: CreateInterviewQuestionDto): Promise<InterviewQuestionDocument>;
    findAll(query: InterviewQueryDto): Promise<InterviewQuestionDocument[]>;
    findOne(id: string): Promise<InterviewQuestionDocument>;
    update(id: string, updateInterviewQuestionDto: UpdateInterviewQuestionDto): Promise<InterviewQuestionDocument>;
    remove(id: string): Promise<{
        deleted: boolean;
    }>;
}
