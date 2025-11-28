import { Module } from '@nestjs/common';
import { BarangController } from './barang.controller';
import { BarangService } from './barang.service';
import { PrismaDataModule } from 'src/prisma-data/prisma-data.module';

@Module({
  controllers: [BarangController],
  providers: [BarangService],
  imports: [PrismaDataModule],
})
export class BarangModule {}
