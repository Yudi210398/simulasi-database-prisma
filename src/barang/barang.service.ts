import { HttpException, Injectable } from '@nestjs/common';
import { PrismaDataService } from 'src/prisma-data/prisma-data.service';

@Injectable()
export class BarangService {
  constructor(private servicePrisma: PrismaDataService) {}

  async getData() {
    return this.servicePrisma.$transaction(async (tx) => {
      const product = await tx.$queryRawUnsafe(
        `SELECT * FROM "produk" WHERE id = $1 FOR UPDATE`,
        1,
      );
      if (!product[0]) throw new HttpException('Barang tidak ditemukan', 404);
      if (product[0].qty <= 10) throw new HttpException('Stok habis', 404);
      return product[0];
    });
  }
}
