import { INestApplication, Injectable, OnModuleInit } from '@nestjs/common';
import { PrismaClient } from '@prisma/client';
import { PrismaPg } from '@prisma/adapter-pg';

@Injectable()
export class PrismaDataService extends PrismaClient implements OnModuleInit {
  constructor() {
    const adapter = new PrismaPg({
      connectionString: process.env.DATABASE_URL,
    });

    super({ adapter });
  }

  async onModuleInit() {
    await this.$connect().then(async () => {});
    console.log(`konek database`);
  }

  async enableShutdownHooks(app: INestApplication) {
    this.$on(`warn`, async () => {
      await app.close();
    });
  }
}
