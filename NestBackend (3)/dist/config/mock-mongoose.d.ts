export declare class MockMongooseService {
    private models;
    private mockData;
    createModel(name: string, schema: any): any;
    private createQueryBuilder;
    private mockCreate;
}
export declare const createMockMongooseConnection: () => {
    getModelToken: (name: string) => string;
    getConnectionToken: () => string;
};
