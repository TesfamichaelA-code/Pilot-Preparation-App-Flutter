import { Injectable, NotFoundException, BadRequestException } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { ExamResult, ExamResultDocument } from './schemas/exam-result.schema';
import { ExamsService } from '../exams/exams.service';
import { SubmitExamResultDto, ProgressQueryDto } from './dto/progress.dto';

@Injectable()
export class ProgressService {
  constructor(
    @InjectModel(ExamResult.name) private examResultModel: Model<ExamResultDocument>,
    private examsService: ExamsService,
  ) {}

  async submitExamResult(
    examId: string,
    submitExamResultDto: SubmitExamResultDto,
    userId: string,
  ): Promise<ExamResultDocument> {
    // Verify exam exists
    const exam = await this.examsService.findExamById(examId);
    
    // Get all questions for this exam
    const questions = await this.examsService.findAllQuestions(examId);
    
    if (questions.length === 0) {
      throw new BadRequestException('Exam has no questions');
    }
    
    // Validate answer submission
    if (submitExamResultDto.answers.length !== questions.length) {
      throw new BadRequestException('Number of answers does not match number of questions');
    }
    
    // Calculate score
    let correctAnswers = 0;
    const answerDetails = questions.map((question, index) => {
      const isCorrect = question.correctAnswer === submitExamResultDto.answers[index];
      if (isCorrect) correctAnswers++;
      
      return {
        questionId: question._id,
        questionText: question.text,
        userAnswer: submitExamResultDto.answers[index],
        correctAnswer: question.correctAnswer,
        isCorrect,
      };
    });
    
    const score = (correctAnswers / questions.length) * 100;
    
    // Create and save result
    const examResult = new this.examResultModel({
      userId,
      examId,
      score,
      totalQuestions: questions.length,
      correctAnswers,
      answerDetails,
      completedAt: new Date(),
    });
    
    return examResult.save();
  }

  async getUserExamResults(userId: string, query: ProgressQueryDto): Promise<ExamResultDocument[]> {
    const { limit = 10, skip = 0, sortBy = 'completedAt', sortDirection = 'desc' } = query;
    
    const sort: any = {};
    sort[sortBy] = sortDirection === 'asc' ? 1 : -1;
    
    return this.examResultModel
      .find({ userId })
      .sort(sort)
      .skip(skip)
      .limit(limit)
      .populate('examId', 'title category difficulty')
      .exec();
  }

  async getUserExamResultByExam(examId: string, userId: string): Promise<ExamResultDocument[]> {
    // Verify exam exists
    await this.examsService.findExamById(examId);
    
    return this.examResultModel
      .find({ userId, examId })
      .sort({ completedAt: -1 })
      .exec();
  }

  async getUserProgressStats(userId: string): Promise<any> {
    // Get all results for the user
    const results = await this.examResultModel.find({ userId }).exec();
    
    if (results.length === 0) {
      return {
        totalExamsTaken: 0,
        averageScore: 0,
        highestScore: 0,
        lowestScore: 0,
        recentResults: [],
      };
    }
    
    // Calculate statistics
    const totalExamsTaken = results.length;
    const averageScore = results.reduce((sum, result) => sum + result.score, 0) / totalExamsTaken;
    const highestScore = Math.max(...results.map(result => result.score));
    const lowestScore = Math.min(...results.map(result => result.score));
    
    // Get 5 most recent results
    const recentResults = await this.examResultModel
      .find({ userId })
      .sort({ completedAt: -1 })
      .limit(5)
      .populate('examId', 'title category')
      .exec();
    
    // Calculate progress over time
    const progressOverTime = await this.calculateProgressOverTime(userId);
    
    return {
      totalExamsTaken,
      averageScore,
      highestScore,
      lowestScore,
      recentResults,
      progressOverTime,
    };
  }

  private async calculateProgressOverTime(userId: string): Promise<any> {
    // Get results grouped by month
    const sixMonthsAgo = new Date();
    sixMonthsAgo.setMonth(sixMonthsAgo.getMonth() - 6);
    
    const results = await this.examResultModel
      .find({ 
        userId, 
        completedAt: { $gte: sixMonthsAgo } 
      })
      .sort({ completedAt: 1 })
      .exec();
    
    // Group by month and calculate average scores
    const monthlyData = results.reduce((acc, result) => {
      const month = new Date(result.completedAt).toISOString().substring(0, 7); // YYYY-MM
      
      if (!acc[month]) {
        acc[month] = {
          month,
          totalScore: 0,
          count: 0,
          averageScore: 0,
        };
      }
      
      acc[month].totalScore += result.score;
      acc[month].count += 1;
      acc[month].averageScore = acc[month].totalScore / acc[month].count;
      
      return acc;
    }, {});
    
    // Convert to array and sort by month
    return Object.values(monthlyData).sort((a: any, b: any) => a.month.localeCompare(b.month));
  }
}
