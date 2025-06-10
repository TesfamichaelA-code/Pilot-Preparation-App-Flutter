"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.closeMongoMemoryServer = exports.getMongoMemoryServer = void 0;
const mongodb_memory_server_1 = require("mongodb-memory-server");
let mongoMemoryServer;
const getMongoMemoryServer = async () => {
    if (!mongoMemoryServer) {
        mongoMemoryServer = await mongodb_memory_server_1.MongoMemoryServer.create();
        const uri = mongoMemoryServer.getUri();
        console.log(`MongoDB Memory Server running at ${uri}`);
        return { uri };
    }
    return { uri: mongoMemoryServer.getUri() };
};
exports.getMongoMemoryServer = getMongoMemoryServer;
const closeMongoMemoryServer = async () => {
    if (mongoMemoryServer) {
        await mongoMemoryServer.stop();
        console.log('MongoDB Memory Server stopped');
    }
};
exports.closeMongoMemoryServer = closeMongoMemoryServer;
//# sourceMappingURL=mongodb-memory-server.js.map