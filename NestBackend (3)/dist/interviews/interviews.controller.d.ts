import { InterviewsService } from './interviews.service';
import { CreateInterviewQuestionDto, UpdateInterviewQuestionDto, InterviewQueryDto } from './dto/interview.dto';
export declare class InterviewsController {
    private readonly interviewsService;
    constructor(interviewsService: InterviewsService);
    create(createInterviewQuestionDto: CreateInterviewQuestionDto): unknown;
    findAll(query: InterviewQueryDto): unknown;
    findOne(id: string): unknown;
    update(id: string, updateInterviewQuestionDto: UpdateInterviewQuestionDto): unknown;
    remove(id: string): unknown;
}
