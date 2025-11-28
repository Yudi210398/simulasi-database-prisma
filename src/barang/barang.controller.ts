import { Controller, Get } from '@nestjs/common';
import { BarangService } from './barang.service';

@Controller('barang')
export class BarangController {
  constructor(private serviceBarang: BarangService) {}

  @Get()
  async getData() {
    return this.serviceBarang.getData();
  }
}
