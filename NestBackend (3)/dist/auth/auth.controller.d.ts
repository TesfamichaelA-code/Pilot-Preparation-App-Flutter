import { AuthService } from './auth.service';
import { CreateUserDto, LoginDto } from './dto/auth.dto';
export declare class AuthController {
    private authService;
    constructor(authService: AuthService);
    register(createUserDto: CreateUserDto): unknown;
    login(loginDto: LoginDto, req: any): unknown;
    getProfile(req: any): any;
}
