import { ResourceCategory, ResourceType } from '../schemas/resource.schema';
export declare class CreateResourceDto {
    title: string;
    description?: string;
    type: ResourceType;
    category?: ResourceCategory;
    author?: string;
    tags?: string[];
    externalUrl?: string;
    isActive?: boolean;
}
export declare class UpdateResourceDto {
    title?: string;
    description?: string;
    type?: ResourceType;
    category?: ResourceCategory;
    author?: string;
    tags?: string[];
    externalUrl?: string;
    isActive?: boolean;
}
export declare class ResourceQueryDto {
    type?: ResourceType;
    category?: ResourceCategory;
    search?: string;
    tag?: string;
    limit?: number;
    skip?: number;
}
