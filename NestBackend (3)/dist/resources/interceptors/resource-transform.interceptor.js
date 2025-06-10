"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.ResourceTransformInterceptor = void 0;
const common_1 = require("@nestjs/common");
let ResourceTransformInterceptor = class ResourceTransformInterceptor {
    intercept(context, next) {
        const request = context.switchToHttp().getRequest();
        if (request.method === 'POST' && request.url.includes('/resources/upload')) {
            const body = request.body;
            if (body.tags && typeof body.tags === 'string') {
                body.tags = body.tags.split(',').map(tag => tag.trim());
            }
            if (body.isActive !== undefined) {
                if (typeof body.isActive === 'string') {
                    body.isActive = body.isActive.toLowerCase() === 'true' ? true : false;
                }
            }
        }
        return next.handle();
    }
};
exports.ResourceTransformInterceptor = ResourceTransformInterceptor;
exports.ResourceTransformInterceptor = ResourceTransformInterceptor = __decorate([
    (0, common_1.Injectable)()
], ResourceTransformInterceptor);
//# sourceMappingURL=resource-transform.interceptor.js.map