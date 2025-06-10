"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.ResourcesModule = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const resources_controller_1 = require("./resources.controller");
const resources_service_1 = require("./resources.service");
const resource_schema_1 = require("./schemas/resource.schema");
const platform_express_1 = require("@nestjs/platform-express");
const multer_1 = require("multer");
const path_1 = require("path");
const uuid_1 = require("uuid");
let ResourcesModule = class ResourcesModule {
};
exports.ResourcesModule = ResourcesModule;
exports.ResourcesModule = ResourcesModule = __decorate([
    (0, common_1.Module)({
        imports: [
            mongoose_1.MongooseModule.forFeature([{ name: resource_schema_1.Resource.name, schema: resource_schema_1.ResourceSchema }]),
            platform_express_1.MulterModule.register({
                storage: (0, multer_1.diskStorage)({
                    destination: './uploads',
                    filename: (req, file, callback) => {
                        const uniqueSuffix = (0, uuid_1.v4)();
                        const ext = (0, path_1.extname)(file.originalname);
                        callback(null, `${uniqueSuffix}${ext}`);
                    },
                }),
                fileFilter: (req, file, callback) => {
                    const allowedMimeTypes = [
                        'application/pdf',
                        'application/msword',
                        'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
                        'image/jpeg',
                        'image/png',
                        'audio/mpeg',
                        'audio/mp4',
                        'video/mp4',
                        'video/mpeg',
                    ];
                    if (allowedMimeTypes.includes(file.mimetype)) {
                        callback(null, true);
                    }
                    else {
                        callback(new Error('Unsupported file type'), false);
                    }
                },
                limits: {
                    fileSize: 100 * 1024 * 1024,
                },
            }),
        ],
        controllers: [resources_controller_1.ResourcesController],
        providers: [resources_service_1.ResourcesService],
        exports: [resources_service_1.ResourcesService],
    })
], ResourcesModule);
//# sourceMappingURL=resources.module.js.map