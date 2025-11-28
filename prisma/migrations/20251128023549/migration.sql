-- CreateTable
CREATE TABLE "customer" (
    "id" SERIAL NOT NULL,
    "nama" VARCHAR(100) NOT NULL,
    "umur" INTEGER NOT NULL,

    CONSTRAINT "customer_pkey" PRIMARY KEY ("id")
);
