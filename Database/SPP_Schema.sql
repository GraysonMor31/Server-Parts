CREATE TABLE Manufacturer (
    manufacturer_id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    url VARCHAR(500) NOT NULL
);

CREATE TABLE CPU (
    cpu_id VARCHAR(255) PRIMARY KEY,
    manufacturer_id VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    base_clock DECIMAL(8, 2) NOT NULL,
    boost_clock DECIMAL(8, 2) NOT NULL,
    core_count INT NOT NULL,
    thread_count INT NOT NULL,
    cache DECIMAL(8, 2) NOT NULL,
    socket VARCHAR(255) NOT NULL,
    pcie_lanes INT NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    url VARCHAR(500) NOT NULL,
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer(manufacturer_id)
);

CREATE TABLE GPU (
    gpu_id VARCHAR(255) PRIMARY KEY,
    manufacturer_id VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    memory_size INT NOT NULL,
    cores BIGINT NOT NULL,
    rt_cores BIGINT NOT NULL,
    tensor_units BIGINT NOT NULL,
    base_clock DECIMAL(8, 2) NOT NULL,
    boost_clock DECIMAL(8, 2) NOT NULL,
    data_center BIT NOT NULL,
    pcie_gen DECIMAL(8, 2) NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    url VARCHAR(500) NOT NULL,
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer(manufacturer_id)
);

CREATE TABLE RAM (
    ram_id VARCHAR(255) PRIMARY KEY,
    manufacturer_id VARCHAR(255) NOT NULL,
    capacity INT NOT NULL,
    speed BIGINT NOT NULL,
    ddr_version INT NOT NULL,
    cas_latency INT NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    url VARCHAR(500) NOT NULL,
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer(manufacturer_id)
);

CREATE TABLE Storage (
    storage_id VARCHAR(255) PRIMARY KEY,
    manufacturer_id VARCHAR(255) NOT NULL,
    capacity VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    interface VARCHAR(255) NOT NULL,
    cache BIGINT NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    url VARCHAR(500) NOT NULL,
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer(manufacturer_id)
);

CREATE TABLE Motherboard (
    motherboard_id VARCHAR(255) PRIMARY KEY,
    manufacturer_id VARCHAR(255) NOT NULL,
    socket VARCHAR(255) NOT NULL,
    chipset VARCHAR(255) NOT NULL,
    form_factor VARCHAR(255) NOT NULL,
    memory_max INT NOT NULL,
    memory_slots INT NOT NULL,
    pcie_slots INT NOT NULL,
    sata_6_ports INT NOT NULL,
    m2_slots INT NOT NULL,
    ethernet DECIMAL(8, 2) NOT NULL,
    ecc_support BIT NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    url VARCHAR(500) NOT NULL,
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer(manufacturer_id)
);

CREATE TABLE Chassis (
    chassis_id VARCHAR(255) PRIMARY KEY,
    manufacturer_id VARCHAR(255) NOT NULL,
    rack_units DECIMAL(8, 2) NOT NULL,
    color VARCHAR(255) NOT NULL,
    motherboard_form_factor VARCHAR(255) NOT NULL,
    power_supply_form_factor VARCHAR(255) NOT NULL,
    hdd_drive_bays INT NOT NULL,
    ssd_drive_bays INT NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    url VARCHAR(500) NOT NULL,
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer(manufacturer_id)
);

CREATE TABLE Power (
    power_id VARCHAR(255) PRIMARY KEY,
    manufacturer_id VARCHAR(255) NOT NULL,
    wattage BIGINT NOT NULL,
    form_factor VARCHAR(255) NOT NULL,
    efficiency VARCHAR(255) NOT NULL,
    modular BIT NOT NULL,
    fan_less BIT NOT NULL,
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer(manufacturer_id)
);
