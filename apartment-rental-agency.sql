create table Buildings
(
  BuildingId int(2) AUTO_INCREMENT,
  BuildingName varchar(100),
  Address varchar(200),
  PRIMARY KEY (BuildingId)
);

create table Apartments
(
  AptId int(4) AUTO_INCREMENT,
  AptNo int(3),
  BuildingId int(2),
  PRIMARY KEY (AptId),
  FOREIGN KEY (BuildingId) REFERENCES Buildings(BuildingId)
);

create table Tenants
(
  TenantId int(2) AUTO_INCREMENT,
  TenantName varchar(100),
  PRIMARY KEY (TenantId)
);


create table AptTenants
(
  TenantId int(2) NOT NULL,
  AptId int(2) NOT NULL,
  PRIMARY KEY (TenantId, AptId),
  FOREIGN KEY (TenantId) REFERENCES Tenants(TenantId),
  FOREIGN KEY (AptId) REFERENCES Tenants(AptId)
);
