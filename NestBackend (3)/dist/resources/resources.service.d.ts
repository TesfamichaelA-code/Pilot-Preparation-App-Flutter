import { Model } from 'mongoose';
import { ResourceDocument } from './schemas/resource.schema';
import { CreateResourceDto, ResourceQueryDto, UpdateResourceDto } from './dto/resource.dto';
export declare class ResourcesService {
    private resourceModel;
    constructor(resourceModel: Model<ResourceDocument>);
    create(createResourceDto: CreateResourceDto, file?: Express.Multer.File): Promise<ResourceDocument>;
    findAll(query: ResourceQueryDto): Promise<ResourceDocument[]>;
    findOne(id: string): Promise<ResourceDocument>;
    update(id: string, updateResourceDto: UpdateResourceDto): Promise<ResourceDocument>;
    remove(id: string): Promise<{
        deleted: boolean;
    }>;
    getCategories(): Promise<string[]>;
    getTags(): Promise<string[]>;
}
