import { applyDecorators } from '@nestjs/common';
import { ApiBearerAuth, ApiOperation } from '@nestjs/swagger';

/**
 * Custom decorator that combines API documentation with bearer auth
 * This ensures Swagger UI properly applies authentication to resources endpoints
 */
export function ResourceApiOperation(summary: string) {
  return applyDecorators(
    ApiOperation({ summary }),
    ApiBearerAuth(),
  );
}
