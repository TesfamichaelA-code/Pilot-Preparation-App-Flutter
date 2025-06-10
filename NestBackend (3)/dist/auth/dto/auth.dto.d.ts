import { Role } from '../../users/schemas/user.schema';
export declare class CreateUserDto {
    name: string;
    email: string;
    password: string;
    roles?: Role[];
}
export declare class LoginDto {
    email: string;
    password: string;
}
