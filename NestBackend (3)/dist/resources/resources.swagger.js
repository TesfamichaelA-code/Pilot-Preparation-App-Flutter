"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.ResourceApiOperation = ResourceApiOperation;
const common_1 = require("@nestjs/common");
const swagger_1 = require("@nestjs/swagger");
function ResourceApiOperation(summary) {
    return (0, common_1.applyDecorators)((0, swagger_1.ApiOperation)({ summary }), (0, swagger_1.ApiBearerAuth)());
}
//# sourceMappingURL=resources.swagger.js.map