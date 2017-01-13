DELETE FROM Department;
DELETE FROM Supervisor;
DELETE FROM SupervisorInDepartment;
DELETE FROM Computer;
DELETE FROM Employee;
DELETE FROM TrainingProgram;
DELETE FROM EmployeeInTrainingProgram;

DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Supervisor;
DROP TABLE IF EXISTS SupervisorInDepartment;
DROP TABLE IF EXISTS Computer;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS TrainingProgram;
DROP TABLE IF EXISTS EmployeeInTrainingProgram;


CREATE TABLE `Department` (
  `DepartmentId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `Name`  TEXT NOT NULL,
  `Budget`  TEXT NOT NULL,
  `SupervisorId` INTEGER NOT NULL,
  FOREIGN KEY(`SupervisorId`) REFERENCES `Supervisor`(`SupervisorId`)
);

CREATE TABLE `Supervisor` (
  `SupervisorId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `Name`  TEXT NOT NULL,
  `DepartmentId`  INTEGER NOT NULL,
  `EmployeeId` INTEGER NOT NULL,
  FOREIGN KEY(`DepartmentId`) REFERENCES `Department`(`DepartmentId`)
  FOREIGN KEY(`EmployeeId`) REFERENCES `Employee`(`EmployeeId`)
);

CREATE TABLE `SupervisorInDepartment` (
  `SupervisorInDepartmentId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `SupervisorId` INTEGER NOT NULL,
  `DepartmentId`  INTEGER NOT NULL,
  FOREIGN KEY(`SupervisorId`) REFERENCES `Supervisor`(`SupervisorId`)
  FOREIGN KEY(`DepartmentId`) REFERENCES `Department`(`DepartmentId`)
);

CREATE TABLE `Computer` (
  `ComputerId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `PurchaseDate`  TEXT NOT NULL,
  `DecomissionDate`  TEXT NOT NULL,
  `EmployeeId` INTEGER NOT NULL,
  FOREIGN KEY(`EmployeeId`) REFERENCES `Employee`(`EmployeeId`)
);

CREATE TABLE `Employee` (
  `EmployeeId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `Name`  TEXT NOT NULL,
  `DepartmentId`  INTEGER NOT NULL,
  `TrainingProgramId`  INTEGER NOT NULL,
  `ComputerId` INTEGER NOT NULL,
  `SupervisorId` INTEGER NOT NULL,
  FOREIGN KEY(`DepartmentId`) REFERENCES `Department`(`DepartmentId`)
  FOREIGN KEY(`TrainingProgramId`) REFERENCES `TrainingProgram`(`TrainingProgramId`)
  FOREIGN KEY(`ComputerId`) REFERENCES `Computer`(`ComputerId`)
  FOREIGN KEY(`SupervisorId`) REFERENCES `Supervisor`(`SupervisorId`)
);

CREATE TABLE `TrainingProgram` (
  `TrainingProgramId` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `StartDate`  TEXT NOT NULL,
  `EndDate`  TEXT NOT NULL,
  `MaxAttendees` INTEGER NOT NULL,
  `EmployeeId` INTEGER NOT NULL,
  FOREIGN KEY(`EmployeeId`) REFERENCES `Employee`(`EmployeeId`)
);

CREATE TABLE `EmployeeInTrainingProgram` (
  `EmployeeInTrainingProgram` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `TrainingProgramId` INTEGER NOT NULL,
  `EmployeeId`  INTEGER NOT NULL,
  FOREIGN KEY(`TrainingProgramId`) REFERENCES `TrainingProgram`(`TrainingProgramId`)
  FOREIGN KEY(`EmployeeId`) REFERENCES `Employee`(`EmployeeId`)
);




