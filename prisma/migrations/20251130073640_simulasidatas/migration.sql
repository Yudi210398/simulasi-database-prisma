-- CreateTable
CREATE TABLE "skudata" (
    "id" SERIAL NOT NULL,
    "namaBarang" VARCHAR(100) NOT NULL,
    "hargaBarang" INTEGER NOT NULL,
    "qty" INTEGER NOT NULL,

    CONSTRAINT "skudata_pkey" PRIMARY KEY ("id")
);
