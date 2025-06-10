import { Injectable, NestInterceptor, ExecutionContext, CallHandler } from '@nestjs/common';
import { Observable } from 'rxjs';

@Injectable()
export class ResourceTransformInterceptor implements NestInterceptor {
  intercept(context: ExecutionContext, next: CallHandler): Observable<any> {
    const request = context.switchToHttp().getRequest();
    
    // Only transform for POST /resources/upload endpoint
    if (request.method === 'POST' && request.url.includes('/resources/upload')) {
      const body = request.body;
      
      // Transform tags from string to array if it's a string
      if (body.tags && typeof body.tags === 'string') {
        body.tags = body.tags.split(',').map(tag => tag.trim());
      }
      
      // Transform isActive from string to boolean
      if (body.isActive !== undefined) {
        if (typeof body.isActive === 'string') {
          body.isActive = body.isActive.toLowerCase() === 'true' ? true : false;
        }
      }
    }
    
    return next.handle();
  }
}
