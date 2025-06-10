"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.createMockMongooseConnection = exports.MockMongooseService = void 0;
const common_1 = require("@nestjs/common");
let MockMongooseService = class MockMongooseService {
    constructor() {
        this.models = {};
        this.mockData = {};
    }
    createModel(name, schema) {
        this.models[name] = {
            name,
            schema,
            find: () => this.createQueryBuilder(name),
            findOne: () => this.createQueryBuilder(name),
            findById: () => this.createQueryBuilder(name),
            create: (doc) => this.mockCreate(name, doc),
            updateOne: () => ({ exec: () => Promise.resolve({ modifiedCount: 1 }) }),
            deleteOne: () => ({ exec: () => Promise.resolve({ deletedCount: 1 }) }),
        };
        this.mockData[name] = [];
        return this.models[name];
    }
    createQueryBuilder(modelName) {
        return {
            exec: () => Promise.resolve(this.mockData[modelName] || []),
            populate: () => this.createQueryBuilder(modelName),
            skip: () => this.createQueryBuilder(modelName),
            limit: () => this.createQueryBuilder(modelName),
            sort: () => this.createQueryBuilder(modelName),
            select: () => this.createQueryBuilder(modelName),
        };
    }
    mockCreate(modelName, doc) {
        const newDoc = Object.assign(Object.assign({ _id: `mock_id_${Date.now()}` }, doc), { createdAt: new Date(), updatedAt: new Date() });
        this.mockData[modelName].push(newDoc);
        return Promise.resolve(newDoc);
    }
};
exports.MockMongooseService = MockMongooseService;
exports.MockMongooseService = MockMongooseService = __decorate([
    (0, common_1.Injectable)()
], MockMongooseService);
const createMockMongooseConnection = () => {
    console.log('Using mock MongoDB implementation for development');
    return {
        getModelToken: (name) => name,
        getConnectionToken: () => 'default',
    };
};
exports.createMockMongooseConnection = createMockMongooseConnection;
//# sourceMappingURL=mock-mongoose.js.map