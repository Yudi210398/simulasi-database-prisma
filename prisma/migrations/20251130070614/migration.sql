/*
  Warnings:

  - You are about to drop the `barang` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "barang";

-- CreateTable
CREATE TABLE "barangs" (
    "id" SERIAL NOT NULL,
    "namaBarang" VARCHAR(100) NOT NULL,
    "hargaBarang" INTEGER NOT NULL,
    "qty" INTEGER NOT NULL,

    CONSTRAINT "barangs_pkey" PRIMARY KEY ("id")
);
