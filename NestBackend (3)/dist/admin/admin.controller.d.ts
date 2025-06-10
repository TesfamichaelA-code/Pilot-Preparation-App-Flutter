import { AdminService } from './admin.service';
import { StudentProgressQueryDto, UserStatisticsQueryDto } from './dto/admin.dto';
export declare class AdminController {
    private readonly adminService;
    constructor(adminService: AdminService);
    getAllStudents(): unknown;
    getStudentProgress(id: string, query: StudentProgressQueryDto): unknown;
    getUserStatistics(query: UserStatisticsQueryDto): unknown;
    getExamStatistics(): unknown;
    getOverallStatistics(): unknown;
}
