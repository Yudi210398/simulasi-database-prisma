import { Module } from '@nestjs/common';
import { PrismaDataModule } from './prisma-data/prisma-data.module';
import { BarangModule } from './barang/barang.module';
import { ConfigModule } from '@nestjs/config';

@Module({
  imports: [
    PrismaDataModule,
    BarangModule,
    ConfigModule.forRoot({ isGlobal: true }),
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
