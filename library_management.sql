-- Create the database  
CREATE DATABASE LibraryManagement;  
USE LibraryManagement;  

-- Create the Members table  
CREATE TABLE Members (  
    MemberID INT AUTO_INCREMENT PRIMARY KEY,  
    FirstName VARCHAR(50) NOT NULL,  
    LastName VARCHAR(50) NOT NULL,  
    Email VARCHAR(100) UNIQUE NOT NULL,  
    PhoneNumber VARCHAR(15),  
    MembershipDate DATE NOT NULL  
);  

-- Create the Books table  
CREATE TABLE Books (  
    BookID INT AUTO_INCREMENT PRIMARY KEY,  
    Title VARCHAR(100) NOT NULL,  
    Author VARCHAR(100) NOT NULL,  
    ISBN VARCHAR(13) UNIQUE NOT NULL,  
    PublishedYear YEAR,  
    CopiesAvailable INT NOT NULL  
);  

-- Create the BorrowingRecords table  
CREATE TABLE BorrowingRecords (  
    RecordID INT AUTO_INCREMENT PRIMARY KEY,  
    MemberID INT NOT NULL,  
    BookID INT NOT NULL,  
    BorrowDate DATE NOT NULL,  
    ReturnDate DATE,  
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)  
        ON DELETE CASCADE ON UPDATE CASCADE,  
    FOREIGN KEY (BookID) REFERENCES Books(BookID)  
        ON DELETE CASCADE ON UPDATE CASCADE  
);  

-- Insert sample data into Members  
INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipDate)  
VALUES  
('Erick', 'Juma', 'erickjuma@gmail.com', '0792808130', '2025-05-01'),  
('Rosina', 'Nakhumicha', 'nakhumicharose@gmail.com', '07482752023', '2025-04-02'),
('Christine', 'Nasimiyu', 'nasimiyuchri@gmail.com', '0112926880', '2024-01-02'), 
('Ian', 'Muliro', 'ianmuliro@gmail.com', '0123451045', '2025-03-03'), 
('Wanjala', 'Trivian', 'wanjalatrivian@gmail.com', '0723456789', '2025-05-04'),  
('Sarah', 'kamket', 'kamketsarah@gmail.com', '02365142378', '2024-04-02');  


-- Insert sample data into Books  
INSERT INTO Books (Title, Author, ISBN, PublishedYear, CopiesAvailable)  
VALUES  
('Half a day', 'scot avktings', '27803273565', 1999, 11),  
('An Enemy of the people', 'swiz cones', '23547392', 2004, 7),  
('kifo kisimani', 'yusuf wa yuda', '90674321', 2009, 5), 
('Shredss of Tenderness', 'yvone okwara', '90785638', 2013, 7), 
('The River and the Source', 'Mike Jones', '768545632', 2001, 6), 
('A Dolls House', 'Henrik Ibsen', '908768124352', 2002, 15);

-- Insert sample data into BorrowingRecords  
INSERT INTO BorrowingRecords (MemberID, BookID, BorrowDate, ReturnDate)  
VALUES  
(1, 2, '2023-03-01', NULL),  
(2, 1, '2025-03-05', '2025-04-12'),  
(3, 4, '2024-03-05', '2024-03-19'), 
(4, 6, '2024-04-12', '2025-01-30'), 
(5, 5, '2025-03-05', '2025-04-12'), 
(6, 2, '2024-03-12', '2023-03-25'); 



