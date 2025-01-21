CREATE TABLE "Manufacturer"(
    "manufacturer_id" VARCHAR(255) NOT NULL,
    "name" TEXT NOT NULL,
    "url" TEXT NOT NULL
);
ALTER TABLE
    "Manufacturer" ADD PRIMARY KEY("manufacturer_id");
CREATE TABLE "CPU"(
    "manufacturer_id" VARCHAR(255) NOT NULL,
    "serial_number" VARCHAR(255) NOT NULL,
    "name" TEXT NOT NULL,
    "base_clock" DECIMAL(8, 2) NOT NULL,
    "boost_clock" DECIMAL(8, 2) NOT NULL,
    "core_count" INTEGER NOT NULL,
    "thread_count" INTEGER NOT NULL,
    "cache" DECIMAL(8, 2) NOT NULL,
    "socket" VARCHAR(255) NOT NULL,
    "pcie_lanes" INTEGER NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "url" TEXT NOT NULL
);
ALTER TABLE
    "CPU" ADD PRIMARY KEY("manufacturer_id");
CREATE TABLE "GPU"(
    "manufacturer_id" VARCHAR(255) NOT NULL,
    "serial_number" VARCHAR(255) NOT NULL,
    "name" TEXT NOT NULL,
    "memory_size" INTEGER NOT NULL,
    "cores" BIGINT NOT NULL,
    "rt_cores" BIGINT NOT NULL,
    "tensor_units" BIGINT NOT NULL,
    "base_clock" DECIMAL(8, 2) NOT NULL,
    "boost_clock" DECIMAL(8, 2) NOT NULL,
    "data_ceneter" CHAR(255) NOT NULL,
    "pcie_gen" DECIMAL(8, 2) NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "url" TEXT NOT NULL
);
ALTER TABLE
    "GPU" ADD PRIMARY KEY("manufacturer_id");
CREATE TABLE "RAM"(
    "manufacturer_id" VARCHAR(255) NOT NULL,
    "capacity" INTEGER NOT NULL,
    "speed" BIGINT NOT NULL,
    "ddr_version" INTEGER NOT NULL,
    "cas_latency" INTEGER NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "url" TEXT NOT NULL
);
ALTER TABLE
    "RAM" ADD PRIMARY KEY("manufacturer_id");
CREATE TABLE "Storage"(
    "manufacturer_id" VARCHAR(255) NOT NULL,
    "capacity" VARCHAR(255) NOT NULL,
    "type" TEXT NOT NULL,
    "interface" TEXT NOT NULL,
    "cache" BIGINT NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "url" TEXT NOT NULL
);
ALTER TABLE
    "Storage" ADD PRIMARY KEY("manufacturer_id");
CREATE TABLE "Motherboard"(
    "manufacturer_id" VARCHAR(255) NOT NULL,
    "socket" VARCHAR(255) NOT NULL,
    "chipset" TEXT NOT NULL,
    "form_factor" TEXT NOT NULL,
    "memory_max" INTEGER NOT NULL,
    "memory_slots" INTEGER NOT NULL,
    "pcie_slots" INTEGER NOT NULL,
    "sata_6_ports" INTEGER NOT NULL,
    "m2_slots" INTEGER NOT NULL,
    "ethernet" DECIMAL(8, 2) NOT NULL,
    "ecc_support" CHAR(255) NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "url" TEXT NOT NULL
);
ALTER TABLE
    "Motherboard" ADD PRIMARY KEY("manufacturer_id");
CREATE TABLE "Chasis"(
    "manufacturer_id" VARCHAR(255) NOT NULL,
    "rack_units" DECIMAL(8, 2) NOT NULL,
    "color" CHAR(255) NOT NULL,
    "motherboard_form_factor" TEXT NOT NULL,
    "power_supply_form_factor" TEXT NOT NULL,
    "3"."5_drive_bays" INTEGER NOT NULL,
    "2"."5_drive_bays" INTEGER NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "url" TEXT NOT NULL
);
ALTER TABLE
    "Chasis" ADD PRIMARY KEY("manufacturer_id");
CREATE TABLE "Power"(
    "id" BIGINT NOT NULL,
    "wattage" BIGINT NOT NULL,
    "form_factor" TEXT NOT NULL,
    "effiency" TEXT NOT NULL,
    "modular" CHAR(255) NOT NULL,
    "fanless" CHAR(255) NOT NULL
);
ALTER TABLE
    "Power" ADD PRIMARY KEY("id");
ALTER TABLE
    "Manufacturer" ADD CONSTRAINT "manufacturer_manufacturer_id_foreign" FOREIGN KEY("manufacturer_id") REFERENCES "Chasis"("manufacturer_id");
ALTER TABLE
    "Manufacturer" ADD CONSTRAINT "manufacturer_manufacturer_id_foreign" FOREIGN KEY("manufacturer_id") REFERENCES "Motherboard"("manufacturer_id");
ALTER TABLE
    "CPU" ADD CONSTRAINT "cpu_manufacturer_id_foreign" FOREIGN KEY("manufacturer_id") REFERENCES "Manufacturer"("manufacturer_id");
ALTER TABLE
    "Manufacturer" ADD CONSTRAINT "manufacturer_manufacturer_id_foreign" FOREIGN KEY("manufacturer_id") REFERENCES "Power"("id");
ALTER TABLE
    "GPU" ADD CONSTRAINT "gpu_manufacturer_id_foreign" FOREIGN KEY("manufacturer_id") REFERENCES "Manufacturer"("manufacturer_id");
ALTER TABLE
    "Manufacturer" ADD CONSTRAINT "manufacturer_manufacturer_id_foreign" FOREIGN KEY("manufacturer_id") REFERENCES "RAM"("manufacturer_id");
ALTER TABLE
    "Manufacturer" ADD CONSTRAINT "manufacturer_manufacturer_id_foreign" FOREIGN KEY("manufacturer_id") REFERENCES "Storage"("manufacturer_id");