-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE IF EXISTS Jurisdiction CASCADE;
DROP TABLE IF EXISTS Location_ID CASCADE;
DROP TABLE IF EXISTS Blackout_spots CASCADE;
DROP TABLE IF EXISTS Population_numbers CASCADE;
DROP TABLE IF EXISTS Population_growth CASCADE;
DROP TABLE IF EXISTS Pop_growth_type CASCADE;
DROP TABLE IF EXISTS Population_density CASCADE;


CREATE TABLE Blackout_spots (
    BS_ID INT   NOT NULL,
    Location VARCHAR(100)   NOT NULL,
    Lat VARCHAR(20)   NOT NULL,
    Lon VARCHAR(20)   NOT NULL,
    Local_Government_Area VARCHAR(100)   NOT NULL,
    CONSTRAINT pk_Blackout_spots PRIMARY KEY (
        BS_ID
     )
);

CREATE TABLE Location_ID (
    LGA_code INT   NOT NULL,
    Local_Government_Area VARCHAR(100)   NOT NULL,
    CONSTRAINT pk_Location_ID PRIMARY KEY (
        LGA_code
     )
);

CREATE TABLE Local_Gov_Area (
    Local_Government_Area VARCHAR(100)   NOT NULL,
    CONSTRAINT pk_Local_Gov_Area PRIMARY KEY (
        Local_Government_Area
     )
);

CREATE TABLE Jurisdiction (
    Index INT   NOT NULL,
    Local_Government_Area VARCHAR(100)   NOT NULL,
    Electorate VARCHAR(100)   NOT NULL,
    State VARCHAR(100)   NOT NULL,
    CONSTRAINT pk_Jurisdiction PRIMARY KEY (
        Index
     )
);

CREATE TABLE Population_numbers (
    Pop_index INT   NOT NULL,
    LGA_code INT   NOT NULL,
    pop_2018 INT   NOT NULL,
    pop_2019 INT   NOT NULL,
    CONSTRAINT pk_Population_numbers PRIMARY KEY (
        Pop_index
     )
);

CREATE TABLE Population_growth (
    Growth_index INT   NOT NULL,
    LGA_code INT   NOT NULL,
    Growth_no INT   NOT NULL,
    Growth_per FLOAT(1)   NOT NULL,
    CONSTRAINT pk_Population_growth PRIMARY KEY (
        Growth_index
     )
);

CREATE TABLE Pop_growth_type (
    Growth_type_index INT   NOT NULL,
    LGA_code INT   NOT NULL,
    Births_no INT   NOT NULL,
    Int_migration_no INT   NOT NULL,
    OS_migration_no INT   NOT NULL,
    CONSTRAINT pk_Pop_growth_type PRIMARY KEY (
        Growth_type_index
     )
);

CREATE TABLE Population_density (
    Density_Index INT   NOT NULL,
    LGA_code INT   NOT NULL,
    LGA_area FLOAT(1)   NOT NULL,
    Pop_density FLOAT(1)   NOT NULL,
    CONSTRAINT pk_Population_density PRIMARY KEY (
        Density_Index
     )
);

ALTER TABLE Blackout_spots ADD CONSTRAINT fk_Blackout_spots_Local_Government_Area FOREIGN KEY(Local_Government_Area)
REFERENCES Local_Gov_Area (Local_Government_Area);

ALTER TABLE Location_ID ADD CONSTRAINT fk_Location_ID_Local_Government_Area FOREIGN KEY(Local_Government_Area)
REFERENCES Local_Gov_Area (Local_Government_Area);

ALTER TABLE Jurisdiction ADD CONSTRAINT fk_Jurisdiction_Local_Government_Area FOREIGN KEY(Local_Government_Area)
REFERENCES Local_Gov_Area (Local_Government_Area);

ALTER TABLE Population_numbers ADD CONSTRAINT fk_Population_numbers_LGA_code FOREIGN KEY(LGA_code)
REFERENCES Location_ID (LGA_code);

ALTER TABLE Population_growth ADD CONSTRAINT fk_Population_growth_LGA_code FOREIGN KEY(LGA_code)
REFERENCES Location_ID (LGA_code);

ALTER TABLE Pop_growth_type ADD CONSTRAINT fk_Pop_growth_type_LGA_code FOREIGN KEY(LGA_code)
REFERENCES Location_ID (LGA_code);

ALTER TABLE Population_density ADD CONSTRAINT fk_Population_density_LGA_code FOREIGN KEY(LGA_code)
REFERENCES Location_ID (LGA_code);

