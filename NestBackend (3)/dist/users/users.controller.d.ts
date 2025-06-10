import { UsersService } from './users.service';
import { UpdateUserDto } from './dto/user.dto';
export declare class UsersController {
    private readonly usersService;
    constructor(usersService: UsersService);
    findAll(): unknown;
    findOne(id: string): unknown;
    update(id: string, updateUserDto: UpdateUserDto): unknown;
    remove(id: string): unknown;
}
