"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
var _a;
Object.defineProperty(exports, "__esModule", { value: true });
exports.ResourcesService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
const resource_schema_1 = require("./schemas/resource.schema");
const fs = require("fs");
const path = require("path");
let ResourcesService = class ResourcesService {
    constructor(resourceModel) {
        this.resourceModel = resourceModel;
    }
    async create(createResourceDto, file) {
        const resourceData = Object.assign({}, createResourceDto);
        if (file) {
            resourceData.fileUrl = `/uploads/${file.filename}`;
            resourceData.fileSize = file.size;
            resourceData.mimeType = file.mimetype;
        }
        const createdResource = new this.resourceModel(resourceData);
        return createdResource.save();
    }
    async findAll(query) {
        const { type, category, search, tag, limit = 10, skip = 0 } = query;
        const filter = {};
        if (type) {
            filter.type = type;
        }
        if (category) {
            filter.category = category;
        }
        if (tag) {
            filter.tags = tag;
        }
        if (search) {
            filter.$or = [
                { title: { $regex: search, $options: 'i' } },
                { description: { $regex: search, $options: 'i' } },
            ];
        }
        return this.resourceModel
            .find(filter)
            .skip(skip)
            .limit(limit)
            .sort({ createdAt: -1 })
            .exec();
    }
    async findOne(id) {
        const resource = await this.resourceModel.findById(id).exec();
        if (!resource) {
            throw new common_1.NotFoundException(`Resource with ID ${id} not found`);
        }
        return resource;
    }
    async update(id, updateResourceDto) {
        const updatedResource = await this.resourceModel
            .findByIdAndUpdate(id, updateResourceDto, { new: true })
            .exec();
        if (!updatedResource) {
            throw new common_1.NotFoundException(`Resource with ID ${id} not found`);
        }
        return updatedResource;
    }
    async remove(id) {
        const resource = await this.resourceModel.findById(id).exec();
        if (!resource) {
            throw new common_1.NotFoundException(`Resource with ID ${id} not found`);
        }
        if (resource.fileUrl) {
            try {
                const filePath = path.join(process.cwd(), resource.fileUrl.replace(/^\/uploads/, 'uploads'));
                if (fs.existsSync(filePath)) {
                    fs.unlinkSync(filePath);
                }
            }
            catch (error) {
                console.error('Error deleting file:', error);
            }
        }
        await this.resourceModel.findByIdAndDelete(id).exec();
        return { deleted: true };
    }
    async getCategories() {
        const resources = await this.resourceModel.distinct('category').exec();
        return resources.filter(category => category);
    }
    async getTags() {
        const resources = await this.resourceModel.distinct('tags').exec();
        return resources.filter(tag => tag);
    }
};
exports.ResourcesService = ResourcesService;
exports.ResourcesService = ResourcesService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)(resource_schema_1.Resource.name)),
    __metadata("design:paramtypes", [typeof (_a = typeof mongoose_2.Model !== "undefined" && mongoose_2.Model) === "function" ? _a : Object])
], ResourcesService);
//# sourceMappingURL=resources.service.js.map