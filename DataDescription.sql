CREATE TABLE Parties (
    PartyID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE NOT NULL,
    Venue VARCHAR(255) NOT NULL,
    Theme VARCHAR(255) NOT NULL
);

INSERT INTO Parties (Date, Venue, Theme)
VALUES 
    ('2024-03-05', '123 Main St, City A', 'Superhero Party'),
    ('2024-03-10', '456 Oak St, City B', 'Princess Party'),
    ('2024-03-15', '789 Maple St, City C', 'Pirate Party'),
    ('2024-03-20', '101 Elm St, City D', 'Space Party'),
    ('2024-03-25', '202 Pine St, City E', 'Underwater Party'),
    ('2024-03-30', '303 Cedar St, City F', 'Dinosaur Party'),
    ('2024-04-05', '404 Birch St, City G', 'Circus Party'),
    ('2024-04-10', '505 Spruce St, City H', 'Jungle Party'),
    ('2024-04-15', '606 Walnut St, City I', 'Wizard Party'),
    ('2024-04-20', '707 Cherry St, City J', 'Fairy Tale Party');

CREATE TABLE Guests (
    GuestID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ContactInfo VARCHAR(255) NOT NULL
);

INSERT INTO Guests (Name, ContactInfo)
VALUES 
    ('John Smith', 'john@example.com'),
    ('Emily Johnson', 'emily@example.com'),
    ('Michael Williams', 'michael@example.com'),
    ('Emma Jones', 'emma@example.com'),
    ('Christopher Brown', 'chris@example.com'),
    ('Olivia Davis', 'olivia@example.com'),
    ('William Miller', 'william@example.com'),
    ('Ava Wilson', 'ava@example.com'),
    ('James Taylor', 'james@example.com'),
    ('Sophia Anderson', 'sophia@example.com'),
    ('Alexander Martinez', 'alexander@example.com'),
    ('Isabella Garcia', 'isabella@example.com'),
    ('Ethan Hernandez', 'ethan@example.com'),
    ('Mia Lopez', 'mia@example.com'),
    ('Daniel Gonzalez', 'daniel@example.com'),
    ('Charlotte Perez', 'charlotte@example.com'),
    ('Liam Sanchez', 'liam@example.com'),
    ('Amelia Ramirez', 'amelia@example.com'),
    ('Benjamin Torres', 'benjamin@example.com'),
    ('Harper Flores', 'harper@example.com');


CREATE TABLE Items (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

INSERT INTO Items (Name, Price)
VALUES 
    ('Pizza', 12.99),
    ('Cake', 29.99),
    ('Soft Drinks', 4.99),
    ('Party Hats', 2.49),
    ('Balloons', 1.99),
    ('Party Games Set', 19.99),
    ('Photo Booth Props', 8.99),
    ('Face Painting Kit', 6.99),
    ('Pinata', 14.99),
    ('Candy Bags', 3.49),
    ('Popcorn Machine', 24.99),
    ('Cotton Candy Maker', 32.99),
    ('Chocolate Fountain', 39.99),
    ('Party Lights', 17.99),
    ('Disposable Plates', 5.99),
    ('Plastic Cups', 3.99),
    ('Napkins', 1.49),
    ('Tablecloth', 8.49),
    ('Decorative Centerpieces', 12.49),
    ('Streamer Rolls', 2.99);


CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    PartyID INT NOT NULL,
    ItemID INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (PartyID) REFERENCES Parties(PartyID),
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

INSERT INTO Orders (PartyID, ItemID, Quantity)
VALUES 
    (1, 3, 2),   
    (1, 6, 1),   
    (2, 2, 1),   
    (2, 4, 10), 
    (3, 1, 3),   
    (3, 5, 20), 
    (4, 7, 1),  
    (4, 10, 5),  
    (5, 9, 1),  
    (5, 8, 15); 

