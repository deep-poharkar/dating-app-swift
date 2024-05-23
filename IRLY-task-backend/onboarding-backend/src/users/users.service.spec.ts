import { Test, TestingModule } from '@nestjs/testing';
import { UsersService } from './users.controller';
import { getRepositoryToken } from '@nestjs/typeorm';
import { User } from './user.entity';
import { Repository } from 'typeorm';

describe('UsersService', () => {
  let service: UsersService;
  let repository: Repository<User>;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        UsersService,
        {
          provide: getRepositoryToken(User),
          useClass: Repository,
        },
      ],
    }).compile();

    service = module.get<UsersService>(UsersService);
    repository = module.get<Repository<User>>(getRepositoryToken(User));
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  it('should create a user', async () => {
    const user: User = {
      id: 1,
      first_name: 'John',
      last_name: 'Doe',
      birthdate: new Date(),
      gender: 'Male',
      bio: 'Bio',
      created_at: new Date(),
      updated_at: new Date(),
      interests: [],
    };

    jest.spyOn(repository, 'save').mockResolvedValue(user);

    expect(await service.create(user)).toEqual(user);
  });
});
