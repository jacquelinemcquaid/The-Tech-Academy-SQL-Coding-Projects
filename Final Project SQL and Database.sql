USE db_zoo_2;

CREATE TABLE LIBRARY_BRANCH (
		BranchID INT PRIMARY KEY NOT NULL IDENTITY (2789,1),
		BranchName VARCHAR(50) NOT NULL,
		Address VARCHAR(50) NOT NULL
	);

	INSERT INTO LIBRARY_BRANCH
		(BranchName, Address)
		VALUES
		('Sharpstown', '83 Toronto Road'),
		('Central', '73 Montreal Road'),
		('West', '94 Ottawa Road'),
		('East', '33 Quebec Street')
	;



	SELECT * FROM LIBRARY_BRANCH












CREATE TABLE BOOKS (
		BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		Title VARCHAR(50) NOT NULL,
		PublisherName VARCHAR(50) NOT NULL
	);

	INSERT INTO BOOKS
		(Title, PublisherName)
		VALUES
		('The Lost Tribe', 'HarperCollins'),
		('The Order', 'HarperCollins'),
		('The Pull of the Stars', 'HarperCollins'),
		('The Love Square', 'HarperCollins'),
		('All my Brothers Secrets', 'HarperCollins'),
		('Becoming brianna', 'HarperCollins'),
		('The Secret Messenger', 'HarperCollins'),
		('Universe of Two', 'HarperCollins'),
		('Evie and the Animals', 'HarperCollins'),
		('The Silent Wife', 'HarperCollins'),
		('The Boys Club', 'HarperCollins'),
		('The Lost Jewels', 'HarperCollins'),
		('Finding Freedom', 'HarperCollins'),
		('I Promise', 'HarperCollins'),
		('After Shock', 'HarperCollins'),
		('Blindsighted', 'HarperCollins'),
		('Mystic River', 'HarperCollins'),
		('The Skin of Our Teeth', 'HarperCollins'),
		('The Woman in the Window', 'HarperCollins'),
		('Lakewood', 'HarperCollins')
	;


	SELECT * FROM BOOKS;












CREATE TABLE BOOK_COPIES (
		BOOKS INT NOT NULL CONSTRAINT fk_Books_ID FOREIGN KEY REFERENCES BOOKS(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
		LIBRARY_BRANCH INT NOT NULL CONSTRAINT fk_BranchID FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
		Number_Of_Copies VARCHAR(50) NOT NULL
	);

	INSERT INTO BOOK_COPIES
		(BOOKS, LIBRARY_BRANCH, Number_Of_Copies)
		VALUES
		(1, 2789, '500'),
		(1, 2791, '500'),
		(2, 2790, '1000'),
		(2, 2791, '1000'),
		(3, 2790, '500'),
		(3, 2791, '500'),
		(4, 2790, '1000'),
		(4, 2791, '1000'),
		(5, 2790, '500'),
		(5, 2791, '500'),
		(6, 2790, '1000'),
		(6, 2791, '1000'),
		(7, 2789, '500'),
		(7, 2791, '500'),
		(8, 2789, '1000'),
		(8, 2791, '1000'),
		(9, 2789, '500'),
		(9, 2791, '500'),
		(10, 2789, '1000'),
		(10, 2791, '1000'),
		(11, 2792, '500'),
		(11, 2790, '500'),
		(12, 2792, '1000'),
		(12, 2789, '1000'),
		(13, 2792, '500'),
		(13, 2790, '500'),
		(14, 2792, '1000'),
		(14, 2789, '1000'),
		(15, 2792, '500'),
		(15, 2790, '500'),
		(16, 2792, '1000'),
		(16, 2789, '1000'),
		(17, 2792, '500'),
		(17, 2790, '500'),
		(18, 2792, '1000'),
		(18, 2790, '1000'),
		(19, 2789, '500'),
		(19, 2792, '500'),
		(20, 2792, '1000'),
		(20, 2789, '1000')
	;

	SELECT * FROM BOOK_COPIES;
















	CREATE TABLE BOOK_AUTHORS (
		BOOKS INT NOT NULL CONSTRAINT fk_BookID FOREIGN KEY REFERENCES BOOKS(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
		AuthorName VARCHAR(50) NOT NULL
	);

	INSERT INTO BOOK_AUTHORS
		(BOOKS, AuthorName)
		VALUES
		(1, 'Alexandra West'),
		(2, 'Stephen King'),
		(3, 'Faith S.'),
		(4, 'Nora T.'),
		(5, 'Alex R.'),
		(6, 'Shae D.'),
		(7, 'Tony L.'),
		(8, 'Randolph J.'),
		(9, 'John B.'),
		(10, 'Mary A.'),
		(11, 'Alice N.'),
		(12, 'Sandra J.'),
		(13, 'Jay R.'),
		(14, 'Faith T.'),
		(14, 'Star T.'),
		(16, 'Andrea R.'),
		(17, 'Paul W.'),
		(18, 'Stephen King'),
		(19, 'Bob H.'),
		(20, 'Callie T.')
	;

	SELECT * FROM BOOK_AUTHORS;















	CREATE TABLE BORROWER (
		CardNo INT PRIMARY KEY NOT NULL IDENTITY (1000,1),
		Name VARCHAR(50) NOT NULL,
		Address VARCHAR(50) NOT NULL,
		Phone VARCHAR(50) NOT NULL
	);

	INSERT INTO BORROWER 
		(Name, Address, Phone)
		VALUES
		('Jack S.', '37 Pine St.', '937-839-298'),
		('Ally R.', '88 Cone St.', '354-385-4738'),
		('Betty J.', '82 Star St.', '834-475-1234'),
		('Johnny D.', '64 Mile St.', '738-473-9576'),
		('Jacky S.', '12 Hunter St.', '837-475-1385'),
		('Bella. B', '27 Tee St.', '659-384-2738'),
		('Brette, R.', '67 High St.', '839-475-4780'),
		('Sam. S.', '54 Low St.', '748-382-7584')
	;

	SELECT * FROM BORROWER;















		CREATE TABLE PUBLISHER (
		PublisherName VARCHAR(50) NOT NULL,
		Address VARCHAR(50) NOT NULL,
		Phone VARCHAR(50) NOT NULL
	);

	INSERT INTO PUBLISHER 
		(PublisherName, Address, Phone)
		VALUES
		('HarperCollins', '37 Pine St.', '937-839-298')
	;

	SELECT * FROM PUBLISHER;












		CREATE TABLE BOOK_LOANS (
		BOOKS INT NOT NULL CONSTRAINT fk_Book_ID_2 FOREIGN KEY REFERENCES BOOKS(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
		LIBRARY_BRANCH INT NOT NULL CONSTRAINT fk_Branch_ID_1 FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
		BORROWER INT NOT NULL CONSTRAINT fk_CardNo_1 FOREIGN KEY REFERENCES BORROWER(CardNo) ON UPDATE CASCADE ON DELETE CASCADE,
		DateOut VARCHAR(50) NOT NULL,
		DateDue VARCHAR(50) NOT NULL
	);


	INSERT INTO BOOK_LOANS 
		(BOOKS, LIBRARY_BRANCH, BORROWER, DateOut, DateDue)
		VALUES
		(1, 2789, 1000, 'June 4, 2020', 'June 20, 2020'),
		(1, 2791, 1001, 'June 4, 2020', 'June 20, 2020'),
		(2, 2790, 1000, 'June 15, 2020', 'June 30, 2020'),
		(2, 2791, 1001, 'June 15, 2020', 'June 30, 2020'),
		(3, 2790, 1000, 'July 1, 2020', 'July 15, 2020'),
		(3, 2791, 1001, 'July 1, 2020', 'July 15, 2020'),
		(4, 2790, 1000, 'July 10, 2020', 'July 25, 2020'),
		(4, 2791, 1001, 'July 10, 2020', 'July 25, 2020'),
		(5, 2790, 1000, 'July 15, 2020', 'July 30, 2020'),
		(5, 2791, 1001, 'July 15, 2020', 'July 30, 2020'),
		(6, 2790, 1000, 'August 1, 2020', 'August 15, 2020'),
		(6, 2791, 1001, 'August 1, 2020', 'August 15, 2020'),
		(7, 2789, 1002, 'August 16, 2020', 'August 25, 2020'),
		(7, 2791, 1003, 'August 16, 2020', 'August 25, 2020'),
		(8, 2789, 1002, 'September 1, 2020', 'September 12, 2020'),
		(8, 2791, 1003, 'September 1, 2020', 'September 12, 2020'),
		(9, 2789, 1002, 'September 15, 2020', 'September 30, 2020'),
		(9, 2791, 1003,'September 15, 2020', 'September 30, 2020'),
		(10, 2789, 1002, 'October 1, 2020', 'October 15, 2020'),
		(10, 2791, 1003, 'October 1, 2020', 'October 15, 2020'),
		(1, 2789, 1004, 'June 4, 2020', 'June 20, 2020'),
		(1, 2791, 1005, 'June 4, 2020', 'June 20, 2020'),
		(2, 2790, 1004, 'June 15, 2020', 'June 30, 2020'),
		(2, 2791, 1005, 'June 15, 2020', 'June 30, 2020'),
		(3, 2790, 1004, 'July 1, 2020', 'July 15, 2020'),
		(3, 2791, 1005, 'July 1, 2020', 'July 15, 2020'),
		(4, 2790, 1004, 'July 10, 2020', 'July 25, 2020'),
		(4, 2791, 1005, 'July 10, 2020', 'July 25, 2020'),
		(5, 2790, 1004, 'July 15, 2020', 'July 30, 2020'),
		(5, 2791, 1005, 'July 15, 2020', 'July 30, 2020'),
		(6, 2790, 1004, 'August 1, 2020', 'August 15, 2020'),
		(6, 2791, 1005, 'August 1, 2020', 'August 15, 2020'),
		(7, 2789, 1004, 'August 16, 2020', 'August 25, 2020'),
		(7, 2791, 1005, 'August 16, 2020', 'August 25, 2020'),
		(8, 2789, 1004, 'September 1, 2020', 'September 12, 2020'),
		(8, 2791, 1005, 'September 1, 2020', 'September 12, 2020'),
		(9, 2789, 1004, 'September 15, 2020', 'September 30, 2020'),
		(9, 2791, 1005,'September 15, 2020', 'September 30, 2020'),
		(10, 2789, 1004, 'October 1, 2020', 'October 15, 2020'),
		(10, 2791, 1005, 'October 1, 2020', 'October 15, 2020'),
		(1, 2789, 1006, 'June 4, 2020', 'June 20, 2020'),
		(1, 2791, 1007, 'June 4, 2020', 'June 20, 2020'),
		(2, 2790, 1006, 'June 15, 2020', 'June 30, 2020'),
		(2, 2791, 1007, 'June 15, 2020', 'June 30, 2020'),
		(3, 2790, 1006, 'July 1, 2020', 'July 15, 2020'),
		(3, 2791, 1007, 'July 1, 2020', 'July 15 2020'),
		(4, 2790, 1006, 'July 10, 2020', 'July 25, 2020'),
		(4, 2791, 1007, 'July 10, 2020', 'July 25, 2020'),
		(5, 2790, 1006, 'July 15, 2020', 'July 30, 2020'),
		(5, 2791, 1007, 'July 15, 2020', 'July 30, 2020'),
		(6, 2790, 1006, 'August 1, 2020', 'August 15, 2020'),
		(6, 2791, 1007, 'August 1, 2020', 'August 15, 2020'),
		(7, 2789, 1006, 'August 16, 2020', 'August 25, 2020'),
		(7, 2791, 1007, 'August 16, 2020', 'August 25, 2020'),
		(8, 2789, 1006, 'September 1, 2020', 'September 12, 2020'),
		(8, 2791, 1007, 'September 1, 2020', 'September 12, 2020'),
		(9, 2789, 1006, 'September 15, 2020', 'September 30, 2020'),
		(9, 2791, 1007,'September 15, 2020', 'September 30, 2020'),
		(10, 2789, 1006, 'October 1, 2020', 'October 15, 2020'),
		(10, 2791, 1007, 'October 1, 2020', 'October 15, 2020')
	;

	SELECT * FROM BOOK_LOANS;


	/*--PROCEDURES--*/

	--1--
	CREATE PROC dbo.GetNumberOfCopies
	AS
	SELECT 
		Number_Of_Copies
		FROM BOOK_COPIES
		INNER JOIN LIBRARY_BRANCH ON BranchID = LIBRARY_BRANCH
		INNER JOIN BOOKS ON BookID = BOOKS
		WHERE BookID = '1' AND BranchID = '2789'
	;

	--2--

	--Number of Copies from Branch 1--

	SELECT
	Number_Of_Copies
	FROM BOOK_COPIES
	INNER JOIN LIBRARY_BRANCH ON BranchID = LIBRARY_BRANCH
	INNER JOIN BOOKS ON BookID = BOOKS
	WHERE BookID = '1' AND BranchID = '2789'
	;

	--Number of Copies from Branch 2--

		SELECT 
		Number_Of_Copies
		FROM BOOK_COPIES
		INNER JOIN LIBRARY_BRANCH ON BranchID = LIBRARY_BRANCH
		INNER JOIN BOOKS ON BookID = BOOKS
		WHERE BookID = '1' AND BranchID = '2790'
	;



	--Number of Copies from Branch 3--

		SELECT 
		Number_Of_Copies
		FROM BOOK_COPIES
		INNER JOIN LIBRARY_BRANCH ON BranchID = LIBRARY_BRANCH
		INNER JOIN BOOKS ON BookID = BOOKS
		WHERE BookID = '1' AND BranchID = '2791'
	;

	--Number of Copies from Branch 4--

	SELECT 
		Number_Of_Copies
		FROM BOOK_COPIES
		INNER JOIN LIBRARY_BRANCH ON BranchID = LIBRARY_BRANCH
		INNER JOIN BOOKS ON BookID = BOOKS
		WHERE BookID = '1' AND BranchID = '2792'
	;
	
	--3--
CREATE PROC dbo.BorrowersNoLoan
AS
	SELECT 
	Name
		FROM BORROWER
		INNER JOIN BOOK_LOANS ON BORROWER = CardNo
		WHERE BORROWER IS NULL
	;


	--4--


CREATE PROC dbo.GetBorrowersDueToday
AS
SELECT
BOOKS, LIBRARY_BRANCH, BORROWER, DateDue
FROM BOOK_LOANS
INNER JOIN BORROWER ON BORROWER = CardNo
INNER JOIN BOOKS ON BOOKS = BookID
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH = BranchID
WHERE DateDue='CONVERT(DATE, GETDATE())' AND BranchID='2789'
;



--5--

For each library branch, retrieve the branch name and the total number of books loaned out from that branch.

--Branch 1--

CREATE PROC dbo.CountBooksFromBranch
AS
SELECT COUNT(*) BOOKS
FROM BOOK_LOANS
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH = BranchID
WHERE BranchID = '2789'
;

--Branch 2--

SELECT COUNT(*) BOOKS
FROM BOOK_LOANS
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH = BranchID
WHERE BranchID = '2790'
;

--Branch 3--

SELECT COUNT(*) BOOKS
FROM BOOK_LOANS
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH = BranchID
WHERE BranchID = '2791'
;

--Branch 4--

SELECT COUNT(*) BOOKS
FROM BOOK_LOANS
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH = BranchID
WHERE BranchID = '2792'
;

--6--

CREATE PROC db.GetNameAddressBookCountMoreThan5Books
AS
SELECT
Name, Address, COUNT(CardNo) BookCount
FROM INNER JOIN BORROWER ON BORROWER = CardNo
GROUP BY [Name], [Address], CardNo
HAVING COUNT(CardNo ) > 5
;

--7--

SELECT
Title, Number_Of_Copies
FROM
BOOK_COPIES 
INNER JOIN BOOKS ON BookID = BookID
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH = BranchID
INNER JOIN BOOK_AUTHORS ON BookID = BookID
WHERE AuthorName = 'Stephen King' AND BranchName = 'Central'
;
