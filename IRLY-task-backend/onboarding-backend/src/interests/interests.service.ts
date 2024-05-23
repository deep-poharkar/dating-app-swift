import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Interest } from './interest.entity';

@Injectable()
export class InterestsService {
  constructor(
    @InjectRepository(Interest)
    private interestsRepository: Repository<Interest>,
  ) {}

  findAll(): Promise<Interest[]> {
    return this.interestsRepository.find();
  }

  findOne(id: number): Promise<Interest> {
    return this.interestsRepository.findOne(id);
  }

  async create(interest: Interest): Promise<Interest> {
    return this.interestsRepository.save(interest);
  }

  async remove(id: number): Promise<void> {
    await this.interestsRepository.delete(id);
  }
}
