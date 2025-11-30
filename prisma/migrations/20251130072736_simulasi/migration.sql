/*
  Warnings:

  - You are about to drop the `barangg` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "barangg";

-- CreateTable
CREATE TABLE "produk" (
    "id" SERIAL NOT NULL,
    "namaBarang" VARCHAR(100) NOT NULL,
    "hargaBarang" INTEGER NOT NULL,
    "qty" INTEGER NOT NULL,

    CONSTRAINT "produk_pkey" PRIMARY KEY ("id")
);
