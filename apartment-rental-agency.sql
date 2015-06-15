create table Apartments
(
  AptId int(4) AUTO_INCREMENT,
  AptNo int(3),
  BuildingId int(2),
  PRIMARY KEY (AptId) 
);

create table Buildings
(
  BuildingId int(2) AUTO_INCREMENT,
  BuildingName varchar(100),
  Address varchar(200),
  PRIMARY KEY (BuildingId)
);

create table Tenants
(
  TenantId int(2) AUTO_INCREMENT,
  TenantName varchar(100),
  PRIMARY KEY (TenantId)
);

create table AptTenants
(
  TenantId int(2),
  AptId int(2),
  PRIMARY KEY (TenantId, AptId)
);
