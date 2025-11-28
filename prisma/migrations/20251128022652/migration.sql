/*
  Warnings:

  - You are about to drop the `Barang` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Barang";

-- CreateTable
CREATE TABLE "barang" (
    "id" SERIAL NOT NULL,
    "namaBarang" VARCHAR(100) NOT NULL,
    "hargaBarang" INTEGER NOT NULL,
    "qty" INTEGER NOT NULL,

    CONSTRAINT "barang_pkey" PRIMARY KEY ("id")
);
