export declare class SubmitExamResultDto {
    answers: number[];
}
export declare enum SortDirection {
    ASC = "asc",
    DESC = "desc"
}
export declare class ProgressQueryDto {
    limit?: number;
    skip?: number;
    sortBy?: string;
    sortDirection?: SortDirection;
}
