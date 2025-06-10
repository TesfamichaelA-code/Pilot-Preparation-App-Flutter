import { Document } from 'mongoose';
export type UserDocument = User & Document;
export declare enum Role {
    STUDENT = "student",
    ADMIN = "admin"
}
export declare class User {
    name: string;
    email: string;
    password: string;
    roles: Role[];
}
export declare const UserSchema: any;
