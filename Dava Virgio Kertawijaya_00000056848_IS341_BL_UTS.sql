CREATE DATABASE UTS_00000056848_DavaVirgioKertawijaya
Use UTS_00000056848_DavaVirgioKertawijaya;
--1. 
CREATE TABLE Mentor (
	MentorID			CHAR(5)			PRIMARY KEY,
	MentorName			VARCHAR(50)		NOT NULL,
	Semester			INTEGER			NOT NULL,
	Major				VARCHAR(100)	NOT NULL,
	EmailAddress		VARCHAR(50)		NOT NULL,
	Phone				VARCHAR(50),
	GPA					VARCHAR(50),
	MentorShift			VARCHAR(50)
);

CREATE TABLE Mentee (
	MenteeID			CHAR(5)			PRIMARY KEY,
	MenteeName			VARCHAR(50)		NOT NULL,
	Semester			INTEGER			NOT NULL,
	Major				VARCHAR(100)	NOT NULL,
	EmailAddress		VARCHAR(50)		NOT NULL,
	Phone				VARCHAR(50),
	GPA					VARCHAR(50)
);

CREATE TABLE Subject (
	SubjectID			CHAR(5)			PRIMARY KEY,
	SubjectName			VARCHAR(50),
	Credit				VARCHAR(50)
);

CREATE TABLE HeaderMentoring (
	MentoringID			CHAR(5)			PRIMARY KEY,
	MentorID			VARCHAR(50)		NOT NULL,
	SubjectID			VARCHAR(10)		NOT NULL,
	Room				VARCHAR(100)	NOT NULL,
	StartDate			VARCHAR(50)		NOT NULL,
	Day					VARCHAR(50),
	Shift				VARCHAR(50),
);

CREATE TABLE DetailMentoring (
	MenteeID			CHAR(5)			PRIMARY KEY,
	MentoringID			VARCHAR(50),
	DiscussionGroup		VARCHAR(50)
);

INSERT INTO Mentor VALUES ('MR001', 'Gunawan Siurudin', '5', 'Information Technology', 'GN@bj.com', '085275178761', '4.00', 'Morning')
INSERT INTO Mentor VALUES ('MR002', 'Sean Young Tjahyadi', '5', 'Information System', 'YT@bj.com', '081805846212', '4.00', 'Morning')
INSERT INTO Mentor VALUES ('MR003', 'Parlinggoman Rinaldo Hasibuan', '5', 'Information Technology', 'PG@bj.com', '081572123422', '4.00', 'Afternoon')
INSERT INTO Mentor VALUES ('MR004', 'William Surya Permana', '3', 'Information System', 'WL@bj.com', '081805422344', '4.00', 'Afternoon')
INSERT INTO Mentor VALUES ('MR005', 'Henry Setiady', '7', 'Information Technology and Mathematics', 'HT@bj.com', '081805675366', '4.00', 'Afternoon')
INSERT INTO Mentor VALUES ('MR006', 'Budi', '3', 'Information Technology', 'BD@bj.com', '081228123129', '4.00', 'Afternoon')
INSERT INTO Mentor VALUES ('MR007', 'Yovita Turnadi', '3', 'Information System', 'YV@bj.com', '081809112345', '4.00', 'Afternoon')
INSERT INTO Mentor VALUES ('MR008', 'Rita', '3', 'Information Technology', 'RT@bj.com', '081805821212', '4.00', 'Evening')
INSERT INTO Mentor VALUES ('MR009', 'Amelia Christin', '5', 'Information System', 'AS@bj.com', '081542312348', '4.00', 'Evening')
INSERT INTO Mentor VALUES ('MR010', 'Eripin', '5', 'Information Technology', 'EN@bj.com', '081579357698', '4.00', 'Evening')

SELECT * FROM Mentor

INSERT INTO Mentee VALUES ('ME001', 'Yuhdy Budiarto', '3', 'Information Technology', 'YB@bj.com', '081805846213', '4.00')
INSERT INTO Mentee VALUES ('ME002', 'Setiawan', '5', 'Information Technology', 'SW@bj.com', '085275178762', '3.00')
INSERT INTO Mentee VALUES ('ME003', 'Ferenkey', '5', 'Information Technology', 'FK@bj.com', '081805422346', '3.00')
INSERT INTO Mentee VALUES ('ME004', 'Rapenda Medianta Surbakti', '3', 'Information System', 'RM@bj.com', '081572123423', '3.25')
INSERT INTO Mentee VALUES ('ME005', 'Steven Junior', '3', 'Information Technology and Mathematics', 'ST@bj.com', '081805675367', '3.75')
INSERT INTO Mentee VALUES ('ME006', 'Yoki Winata', '3', 'Information Technology', 'YK@bj.com', '081228123131', '3.50')
INSERT INTO Mentee VALUES ('ME007', 'Irsyad', '5', 'Information Technology', 'IR@bj.com', '081809112346', '3.00')
INSERT INTO Mentee VALUES ('ME008', 'Stevano Christian', '5', 'Information Technology', 'SV@bj.com', '081805821213', '3.75')
INSERT INTO Mentee VALUES ('ME009', 'Jeffry Widyanata', '5', 'Information System and Management', 'JF@bj.com', '081542366349', '3.66')
INSERT INTO Mentee VALUES ('ME010', 'Mahenda Metta Surya', '3', 'Information System', 'MH@bj.com', '081579357699', '3.25')
INSERT INTO Mentee VALUES ('ME011', 'Raymond', '5', 'Computer Engineering', 'RY@bj.com', '081679134568', '3.00')
INSERT INTO Mentee VALUES ('ME012', 'Antoni Wiguna', '3', 'Information Technology', 'AI@bj.com', '081795614698', '3.00')
INSERT INTO Mentee VALUES ('ME013', 'Samuel Sonny Salim', '5', 'Information Technology', 'SO@bj.com', '081476532964', '3.00')
INSERT INTO Mentee VALUES ('ME014', 'Johan', '5', 'Information Technology', 'Johan@bj.com', '081648963125', '3.00')
INSERT INTO Mentee VALUES ('ME015', 'Winata', '5', 'Information Technology and Mathematics', 'Winata@bj.com', '081806497625', '3.25')
INSERT INTO Mentee VALUES ('ME016', 'Nana', '5', 'Information Technology and Mathematics', 'Nana@bj.com', '081649966624', '3.00')
INSERT INTO Mentee VALUES ('ME017', 'Yunus', '5', 'Information Technology and Mathematics', 'Yunus@bj.com', '081816497623', '3.25')
INSERT INTO Mentee VALUES ('ME018', 'Dicky', '5', 'Information System', 'Dicky@bj.com', '081648953124', '3.00')
INSERT INTO Mentee VALUES ('ME019', 'Surya', '5', 'Information System', 'Surya@bj.com', '081806397623', '3.25')
INSERT INTO Mentee VALUES ('ME020', 'Mandagi', '5', 'Information System', 'Mandagi@bj.com', '081658963124', '3.00')

SELECT * FROM Mentee

INSERT INTO Subject VALUES ('BN001', 'Computer Graphics', '7')
INSERT INTO Subject VALUES ('BN002', 'Automata Theory, Language and Computation', '2')
INSERT INTO Subject VALUES ('BN003', 'Computer Algorithm', '6')
INSERT INTO Subject VALUES ('BN004', 'Object Oriented Programming', '4')
INSERT INTO Subject VALUES ('BN005', 'Database', '4')
INSERT INTO Subject VALUES ('BN006', 'Assembly Language', '4')
INSERT INTO Subject VALUES ('BN007', 'Discrete Mathematics', '4')
INSERT INTO Subject VALUES ('BN008', 'Artificial Intelligence', '4')
INSERT INTO Subject VALUES ('BN009', 'Linear Algebra', '6')
INSERT INTO Subject VALUES ('BN010', 'Calculus', '7')

SELECT * FROM Subject

INSERT INTO HeaderMentoring VALUES ('M001', 'MR001', 'BN010', '515', '2010-10-12
00:00:00.000', '2', '3')
INSERT INTO HeaderMentoring VALUES ('M002', 'MR002', 'BN008', '516', '2010-10-12
00:00:00.000', '2', '3')
INSERT INTO HeaderMentoring VALUES ('M003', 'MR003', 'BN003', '517', '2010-10-13
00:00:00.000', '3', '3')
INSERT INTO HeaderMentoring VALUES ('M004', 'MR004', 'BN007', '518', '2010-10-13
00:00:00.000', '4', '3')
INSERT INTO HeaderMentoring VALUES ('M005', 'MR005', 'BN006', '519', '2010-10-14
00:00:00.000', '4', '4')
INSERT INTO HeaderMentoring VALUES ('M006', 'MR006', 'BN009', '519', '2010-10-16
00:00:00.000', '4', '4')
INSERT INTO HeaderMentoring VALUES ('M007', 'MR007', 'BN005', '517', '2010-10-17 
00:00:00.000', '5', '2')
INSERT INTO HeaderMentoring VALUES ('M008', 'MR008', 'BN004', '518', '2010-10-18
00:00:00.000', '5', '5')
INSERT INTO HeaderMentoring VALUES ('M009', 'MR009', 'BN001', '519', '2010-10-19
00:00:00.000', '6', '6')
INSERT INTO HeaderMentoring VALUES ('M010', 'MR010', 'BN002', '520', '2010-10-22
00:00:00.000', '6', '5')

SELECT * FROM HeaderMentoring

INSERT INTO DetailMentoring VALUES ('ME001', 'M001', '1')
INSERT INTO DetailMentoring VALUES ('ME002', 'M007', '1')
INSERT INTO DetailMentoring VALUES ('ME003', 'M010', '5')
INSERT INTO DetailMentoring VALUES ('ME004', 'M001', '4')
INSERT INTO DetailMentoring VALUES ('ME005', 'M008', '4')
INSERT INTO DetailMentoring VALUES ('ME006', 'M004', '3')
INSERT INTO DetailMentoring VALUES ('ME007', 'M003', '3')
INSERT INTO DetailMentoring VALUES ('ME008', 'M008', '4')
INSERT INTO DetailMentoring VALUES ('ME009', 'M010', '1')
INSERT INTO DetailMentoring VALUES ('ME010', 'M001', '4')
INSERT INTO DetailMentoring VALUES ('ME011', 'M001', '5')
INSERT INTO DetailMentoring VALUES ('ME012', 'M002', '3')
INSERT INTO DetailMentoring VALUES ('ME013', 'M003', '3')
INSERT INTO DetailMentoring VALUES ('ME014', 'M004', '4')
INSERT INTO DetailMentoring VALUES ('ME015', 'M005', '1')
INSERT INTO DetailMentoring VALUES ('ME016', 'M006', '1')
INSERT INTO DetailMentoring VALUES ('ME017', 'M007', '3')
INSERT INTO DetailMentoring VALUES ('ME018', 'M008', '5')
INSERT INTO DetailMentoring VALUES ('ME019', 'M010', '1')
INSERT INTO DetailMentoring VALUES ('ME020', 'M001', '2')

SELECT * FROM DetailMentoring

--2. 
UPDATE Mentee
SET MenteeName = 'Margareta Meta Surya'
WHERE MenteeID = 'ME010'

SELECT * FROM Mentee

--3.
UPDATE Mentor
SET Semester = '1'
FROM Mentor INNER JOIN HeaderMentoring 
on Mentor.MentorID = HeaderMentoring.MentorID
INNER JOIN Subject on HeaderMentoring.SubjectID = Subject.SubjectID
WHERE Subject.Credit > '6'

SELECT * FROM Mentor

--4. 
UPDATE Mentee
SET GPA = '3.75'
FROM Mentee INNER JOIN DetailMentoring 
on Mentee.MenteeID = DetailMentoring.MenteeID
INNER JOIN HeaderMentoring on DetailMentoring.MentoringID = HeaderMentoring.MentoringID
INNER JOIN Mentor on HeaderMentoring.MentorID = Mentor.MentorID
WHERE Mentor.MentorName LIKE '__%' AND Mentor.Semester >= '7';

SELECT * FROM Mentor

--5. 
UPDATE Mentor
Set Semester = Semester - RIGHT(Mentor.MentorID, 1)
WHERE RIGHT(Mentor.MentorID, 1) >= '5'

SELECT * FROM Mentor

--6. 
UPDATE Mentee
SET MenteeName = 'MID.' + MenteeName
FROM Mentee INNER JOIN DetailMentoring 
on Mentee.MenteeID = DetailMentoring.MenteeID
INNER JOIN HeaderMentoring on DetailMentoring.MentoringID = HeaderMentoring.MentoringID
INNER JOIN Mentor on HeaderMentoring.MentorID = Mentor.MentorID
WHERE Mentor.MentorName = 'Rita' AND Mentee.Semester ='5';

SELECT * FROM Mentee

--7. 
DELETE FROM Mentee
WHERE Major='Information Technology and Mathematics';

SELECT * FROM Mentee

--8.
GO
CREATE VIEW [Mentoring List] AS
SELECT MR.MentorID, MR.MentorName,
ME.MenteeID, ME.MenteeName,
DM.DiscussionGroup
FROM Mentor MR, Mentee ME, DetailMentoring DM, HeaderMentoring HM
WHERE MR.MentorID = HM.MentorID AND
ME.MenteeID = DM.MenteeID AND
HM.MentoringID = DM.MentoringID AND 
DM.DiscussionGroup = '1' AND
LEN(MR.MentorName) = 6

SELECT * FROM [Mentoring List]