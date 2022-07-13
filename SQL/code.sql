-- create Admin role in AspNetRoles
INSERT INTO [HealthCareDB].[dbo].[AspNetRoles] (Id, Name, NormalizedName, ConcurrencyStamp)
VALUES ('f8ce81f7-879b-4733-ad2d-974db62f4325', 'Admin', 'ADMIN', '905eb6ab-04ff-4d03-bc64-320c05ab39af');

-- insert buffer data for admin users in AspNetUsers
INSERT INTO [HealthCareDB].[dbo].[AspNetUsers] (Id, UserName, NormalizedUserName, Email, NormalizedEmail, EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnd, LockoutEnabled, AccessFailedCount)
VALUES ('af5f271d-e33f-46dd-9c67-0c3ec8796312', 'admin1', 'ADMIN1', 'admin1@example.com', 'ADMIN1@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAEGaJPmMd8cJUrl8pz8FApCtrkumRSt790JvHPTO53Y/R26kZdIojZ+u03aXbIlnQug==', 'NZKXU7QOKDQTMCCO7OMUZ3MMAZZRSOM3', '3226f6e0-ba6c-4730-9f85-b9332d79e1e4', NULL, 0, 0, NULL, 1, 0);

INSERT INTO [HealthCareDB].[dbo].[AspNetUsers] (Id, UserName, NormalizedUserName, Email, NormalizedEmail, EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnd, LockoutEnabled, AccessFailedCount)
VALUES ('957a085c-3f18-4c30-9551-e47a43c3f606', 'admin2', 'ADMIN2', 'admin2@example.com', 'ADMIN3@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAEHkYk1i65nwVroikMGxTFrLzbw74cO/jmfoask+CAXjSVklwvseKRZ13crD+fzvh+g==', 'WXTCWHMWEFVY5VHLJSBQMAKPU42TTH5I', '1e7a2457-4142-4ef6-bab4-bbeec758516d', NULL, 0, 0, NULL, 1, 0);

INSERT INTO [HealthCareDB].[dbo].[AspNetUsers] (Id, UserName, NormalizedUserName, Email, NormalizedEmail, EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnd, LockoutEnabled, AccessFailedCount)
VALUES ('0ab157a8-81b7-4b4a-93f6-cddd84dd6618', 'admin3', 'ADMIN3', 'admin3@example.com', 'ADMIN2@EXAMPLE.COM', 0, 'AQAAAAEAACcQAAAAEEsIVthOraN+uG78zknGB1jn3o2VCOIvwKB9T1K0lsZXQTEdEgstLvS3BOZUUsC56A==', 'BT73P2F2RL6HII63GNVY2DW3ZJP4EEWX', '11119bf9-bbb1-4aed-b976-780aa45fda4c', NULL, 0, 0, NULL, 1, 0);

-- assign users to Admin role in AspNetUserRoles

INSERT INTO [HealthCareDB].[dbo].[AspNetUserRoles] (UserId, RoleId)
VALUES ('af5f271d-e33f-46dd-9c67-0c3ec8796312', 'f8ce81f7-879b-4733-ad2d-974db62f4325');

INSERT INTO [HealthCareDB].[dbo].[AspNetUserRoles] (UserId, RoleId)
VALUES ('957a085c-3f18-4c30-9551-e47a43c3f606', 'f8ce81f7-879b-4733-ad2d-974db62f4325');

INSERT INTO [HealthCareDB].[dbo].[AspNetUserRoles] (UserId, RoleId)
VALUES ('0ab157a8-81b7-4b4a-93f6-cddd84dd6618', 'f8ce81f7-879b-4733-ad2d-974db62f4325');


-- create table Clinics

-- enable admins with read/write permissions for assigning doctors to clinics