"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getMongooseConfig = void 0;
const mongodb_memory_server_1 = require("./mongodb-memory-server");
const getMongooseConfig = async (configService) => {
    const useInMemoryDb = process.env.NODE_ENV === 'test' || process.env.USE_MEMORY_DB === 'true';
    if (useInMemoryDb) {
        const { uri } = await (0, mongodb_memory_server_1.getMongoMemoryServer)();
        return {
            uri,
        };
    }
    return {
        uri: configService.get('database.uri'),
    };
};
exports.getMongooseConfig = getMongooseConfig;
//# sourceMappingURL=mongodb.config.js.map