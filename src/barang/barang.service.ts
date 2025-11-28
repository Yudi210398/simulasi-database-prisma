import { Injectable } from '@nestjs/common';
import { PrismaDataService } from 'src/prisma-data/prisma-data.service';

@Injectable()
export class BarangService {
  constructor(private servicePrisma: PrismaDataService) {}

  async getData() {
    return await this.servicePrisma.barang.findFirst({ where: { id: 1 } });
  }
}
