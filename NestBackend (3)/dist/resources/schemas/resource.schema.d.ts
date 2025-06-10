import { Document } from 'mongoose';
export type ResourceDocument = Resource & Document;
export declare enum ResourceType {
    VIDEO = "video",
    DOCUMENT = "document",
    AUDIO = "audio",
    LINK = "link",
    IMAGE = "image"
}
export declare enum ResourceCategory {
    FLIGHT_THEORY = "flightTheory",
    AIRCRAFT_SYSTEMS = "aircraftSystems",
    NAVIGATION = "navigation",
    METEOROLOGY = "meteorology",
    REGULATIONS = "regulations",
    HUMAN_FACTORS = "humanFactors",
    ETHIOPIAN_AIRLINES = "ethiopianAirlines",
    INTERVIEW_PREP = "interviewPrep"
}
export declare class Resource {
    title: string;
    description: string;
    type: ResourceType;
    category: ResourceCategory;
    author: string;
    tags: string[];
    fileUrl: string;
    fileSize: number;
    mimeType: string;
    externalUrl: string;
    isActive: boolean;
    publishedDate: Date;
}
export declare const ResourceSchema: any;
