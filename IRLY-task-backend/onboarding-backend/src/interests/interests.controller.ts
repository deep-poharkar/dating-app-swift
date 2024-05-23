import { Controller, Get, Post, Body, Param, Delete } from '@nestjs/common';
import { InterestsService } from './interests.service';
import { Interest } from './interest.entity';

@Controller('interests')
export class InterestsController {
  constructor(private readonly interestsService: InterestsService) {}

  @Get()
  findAll(): Promise<Interest[]> {
    return this.interestsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: number): Promise<Interest> {
    return this.interestsService.findOne(id);
  }

  @Post()
  create(@Body() interest: Interest): Promise<Interest> {
    return this.interestsService.create(interest);
  }

  @Delete(':id')
  remove(@Param('id') id: number): Promise<void> {
    return this.interestsService.remove(id);
  }
}
