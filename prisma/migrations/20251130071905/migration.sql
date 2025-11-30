/*
  Warnings:

  - You are about to drop the `barangs` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "barangs";

-- CreateTable
CREATE TABLE "barangg" (
    "id" SERIAL NOT NULL,
    "namaBarang" VARCHAR(100) NOT NULL,
    "hargaBarang" INTEGER NOT NULL,
    "qty" INTEGER NOT NULL,

    CONSTRAINT "barangg_pkey" PRIMARY KEY ("id")
);
