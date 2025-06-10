import { Role } from '../schemas/user.schema';
export declare class UpdateUserDto {
    name?: string;
    email?: string;
    password?: string;
    roles?: Role[];
}
