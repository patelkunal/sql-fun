create table Apartments
(
  AptId int(4),
  AptNo int(3),
  BuildingId int(2)
);

create table Buildings
(
  BuildingId int(2),
  BuildingName varchar(100),
  Address varchar(200)
);

create table Tenants
(
  TenantId int(2),
  TenantName varchar(100)
);

create table AptTenants
(
  TenantId int(2),
  AptId int(2)
);
