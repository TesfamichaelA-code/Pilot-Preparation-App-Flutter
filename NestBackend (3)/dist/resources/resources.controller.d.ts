import { ResourcesService } from './resources.service';
import { CreateResourceDto, ResourceQueryDto, UpdateResourceDto } from './dto/resource.dto';
import { Response } from 'express';
export declare class ResourcesController {
    private readonly resourcesService;
    constructor(resourcesService: ResourcesService);
    create(createResourceDto: CreateResourceDto): unknown;
    uploadFile(file: Express.Multer.File, createResourceDto: CreateResourceDto): unknown;
    findAll(query: ResourceQueryDto): unknown;
    getCategories(): unknown;
    getTags(): unknown;
    getFile(filename: string, res: Response): unknown;
    findOne(id: string): unknown;
    update(id: string, updateResourceDto: UpdateResourceDto): unknown;
    remove(id: string): unknown;
}
