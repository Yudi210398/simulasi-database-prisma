-- CreateTable
CREATE TABLE "Barang" (
    "id" SERIAL NOT NULL,
    "namaBarang" VARCHAR(100) NOT NULL,
    "hargaBarang" INTEGER NOT NULL,
    "qty" INTEGER NOT NULL,

    CONSTRAINT "Barang_pkey" PRIMARY KEY ("id")
);
