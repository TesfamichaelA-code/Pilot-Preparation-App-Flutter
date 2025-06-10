import { MongooseModuleOptions } from '@nestjs/mongoose';
import { ConfigService } from '@nestjs/config';
export declare const getMongooseConfig: (configService: ConfigService) => Promise<MongooseModuleOptions>;
