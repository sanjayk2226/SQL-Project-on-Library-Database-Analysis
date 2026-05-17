-- the SQL project --
-- on Library database analysis --
create database Library;
use Library;

-- creation of tables --

CREATE TABLE publisher(
    publisher_PublisherName VARCHAR(255) PRIMARY KEY,
    publisher_PublisherAddress TEXT,
    publisher_PublisherPhone VARCHAR(15));
    
CREATE TABLE book (
    book_BookID INT PRIMARY KEY,
    book_Title VARCHAR(255),
    book_PublisherName VARCHAR(255),
    FOREIGN KEY (book_PublisherName) REFERENCES publisher(publisher_PublisherName));


CREATE TABLE book_authors (
    book_authors_AuthorID INT PRIMARY KEY auto_increment,
    book_authors_BookID INT,
    book_authors_AuthorName VARCHAR(255),
    FOREIGN KEY (book_authors_BookID) REFERENCES book(book_BookID));
    
CREATE TABLE library_branch (
    library_branch_BranchID INT PRIMARY KEY auto_increment,
    library_branch_BranchName VARCHAR(255),
    library_branch_BranchAddress TEXT);

CREATE TABLE book_copies (
    book_copies_CopiesID INT PRIMARY KEY auto_increment,
    book_copies_BookID INT,
    book_copies_BranchID INT,
    book_copies_No_Of_Copies INT,
    FOREIGN KEY (book_copies_BookID) REFERENCES book(book_BookID),
    FOREIGN KEY (book_copies_BranchID) REFERENCES library_branch(library_branch_BranchID)
);

CREATE TABLE borrower (
    borrower_CardNo INT PRIMARY KEY,
    borrower_BorrowerName VARCHAR(255),
    borrower_BorrowerAddress TEXT,
    borrower_BorrowerPhone VARCHAR(15)
);

CREATE TABLE book_loans (
    book_loans_LoansID INT PRIMARY KEY auto_increment,
    book_loans_BookID INT,
    book_loans_BranchID INT,
    book_loans_CardNo INT,
    book_loans_DateOut DATE,
    book_loans_DueDate DATE,
    FOREIGN KEY (book_loans_BookID) REFERENCES book(book_BookID),
    FOREIGN KEY (book_loans_BranchID) REFERENCES library_branch(library_branch_BranchID),
    FOREIGN KEY (book_loans_CardNo) REFERENCES borrower(borrower_CardNo)
);

-- -- imported  of csv files(tables) and their values  into library database of each tables--

-- task questions--
-- analysis 1. How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?--


SELECT bc.book_copies_No_Of_Copies
FROM book_copies bc
JOIN book b 
    ON bc.book_copies_BookID = b.book_BookID
JOIN library_branch lb 
    ON bc.book_copies_BranchID = lb.library_branch_BranchID
WHERE b.book_Title = 'The Lost Tribe'
AND lb.library_branch_BranchName = 'Sharpstown';


-- analysis 2. How many copies of the book titled "The Lost Tribe" are owned by each library branch?--
SELECT lb.library_branch_BranchName,
       bc.book_copies_No_Of_Copies
FROM book_copies bc
JOIN book b
ON bc.book_copies_BookID = b.book_BookID
JOIN library_branch lb
ON bc.book_copies_BranchID = lb.library_branch_BranchID
WHERE b.book_Title = 'The Lost Tribe';

-- analysis 3. Retrieve the names of all borrowers who do not have any books checked out--
use library;

select b.borrower_BorrowerName
from borrower b
left join book_loans bl on b.borrower_CardNo=bl.book_loans_CardNo
where bl.book_loans_CardNo is null;

-- analysis 4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is 2/3/18, retrieve the book title, the borrower's name, and the borrower's address--
select b.book_Title, br.borrower_BorrowerName, br.borrower_BorrowerAddress
from book b
join book_loans bl on b.book_BookID = bl.book_loans_BookID
join borrower br on bl.book_loans_CardNo = br.borrower_CardNo
join library_branch lb on bl.book_loans_BranchID = lb.library_branch_BranchID
where lb.library_branch_BranchName ='Sharpstown' and bl.book_loans_DueDate ='2/3/18';

-- analysis  5. For each library branch, retrieve the branch name and the total number of books loaned out from that branch.--
select lb.library_branch_BranchName, count(bl.book_loans_BookID) as total_no_of_books_loaned
from library_branch lb
left join book_loans bl on lb.library_branch_BranchID =bl.book_loans_BranchID
group by lb.library_branch_BranchName;

-- analysis 6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out--
select br.borrower_BorrowerName, br.borrower_BorrowerAddress , count(bl.book_loans_BookID) as no_of_books_checked_out
from borrower br
inner join book_loans bl on br.borrower_CardNo = bl.book_loans_CardNo
group by br.borrower_BorrowerName , br.borrower_BorrowerAddress
having count(bl.book_loans_BookID) >5;


-- analysis 7. For each book authored by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central"--
select b.book_Title , bc.book_copies_No_Of_Copies
from book b
join book_authors ba on b.book_BookID= ba.book_authors_BookID
join book_copies bc on b.book_BookID = bc.book_copies_BookID
join library_branch lb on bc.book_copies_BranchID=lb.library_branch_BranchID
where ba.book_authors_AuthorName ='Stephen King' and lb.library_branch_BranchName='Central';