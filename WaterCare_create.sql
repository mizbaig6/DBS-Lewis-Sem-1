-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-05-05 02:56:50.579

-- tables
-- Table: Delivery
CREATE TABLE Delivery (
    deliveryId int  NOT NULL,
    deliveryDate datetime  NOT NULL,
    VehicleNumber varchar(50)  NOT NULL,
    Status varchar(50)  NOT NULL,
    order_OrderId int  NOT NULL,
    CONSTRAINT Delivery_pk PRIMARY KEY (deliveryId)
);

-- Table: Driver
CREATE TABLE Driver (
    DriverId int  NOT NULL,
    DriverName varchar(50)  NOT NULL,
    License varchar(50)  NOT NULL,
    DriverPhone varchar(50)  NOT NULL,
    vehicle_vehicleId int  NOT NULL,
    CONSTRAINT Driver_pk PRIMARY KEY (DriverId)
);

-- Table: POS
CREATE TABLE POS (
    POSId int  NOT NULL,
    TransactionDate datetime  NOT NULL,
    Amount float  NOT NULL,
    CONSTRAINT POS_pk PRIMARY KEY (POSId)
);

-- Table: customer
CREATE TABLE customer (
    CustId int  NOT NULL,
    CustomerName varchar(50)  NOT NULL,
    Address varchar(50)  NOT NULL,
    email varchar(50)  NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY (CustId)
);

-- Table: order
CREATE TABLE `order` (
    OrderId int  NOT NULL,
    Cost float  NOT NULL,
    Quantity int  NOT NULL,
    OrderDate datetime  NOT NULL,
    customer_CustId int  NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY (OrderId)
);

-- Table: supplies
CREATE TABLE supplies (
    SupplierID varchar(50)  NOT NULL,
    supplydate datetime  NOT NULL,
    WaterAmount int  NOT NULL,
    vendor_VendorId  int  NOT NULL,
    CONSTRAINT supplies_pk PRIMARY KEY (SupplierID)
);

-- Table: vehicle
CREATE TABLE vehicle (
    vehicleId int  NOT NULL,
    VehicleType varchar(20)  NOT NULL,
    waterCapacity int  NOT NULL,
    CONSTRAINT vehicle_pk PRIMARY KEY (vehicleId)
);

-- Table: vendor
CREATE TABLE vendor (
    VendorId  int  NOT NULL,
    VendorName varchar(50)  NOT NULL,
    CoverageArea varchar(50)  NOT NULL,
    vendorphone varchar(50)  NOT NULL,
    CONSTRAINT vendor_pk PRIMARY KEY (VendorId )
);

-- foreign keys
-- Reference: Delivery_order (table: Delivery)
ALTER TABLE Delivery ADD CONSTRAINT Delivery_order FOREIGN KEY Delivery_order (order_OrderId)
    REFERENCES `order` (OrderId);

-- Reference: Driver_vehicle (table: Driver)
ALTER TABLE Driver ADD CONSTRAINT Driver_vehicle FOREIGN KEY Driver_vehicle (vehicle_vehicleId)
    REFERENCES vehicle (vehicleId);

-- Reference: order_customer (table: order)
ALTER TABLE `order` ADD CONSTRAINT order_customer FOREIGN KEY order_customer (customer_CustId)
    REFERENCES customer (CustId);

-- Reference: supplies_vendor (table: supplies)
ALTER TABLE supplies ADD CONSTRAINT supplies_vendor FOREIGN KEY supplies_vendor (vendor_VendorId )
    REFERENCES vendor (VendorId );

-- End of file.

