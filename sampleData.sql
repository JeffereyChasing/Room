INSERT INTO Users (username, first_name, last_name, DOB, gender, email, Phone, passwd)
VALUES
    ('john_doe', 'John', 'Doe', '1990-01-01', 1, 'john.doe@example.com', '123-456-7890', 'hashed_password'),
    ('jane_smith', 'Jane', 'Smith', '1995-05-15', 2, 'jane.smith@example.com', '987-654-3210', 'hashed_password');


INSERT INTO Pets (PetName, PetType, PetSize, username)
VALUES
    ('Buddy', 'Dog', 'Large', 'john_doe'),
    ('Fluffy', 'Cat', 'Small', 'jane_smith');

INSERT INTO ApartmentBuilding (CompanyName, BuildingName, AddrNum, AddrStreet, AddrCity, AddrState, AddrZipCode, YearBuilt)
VALUES
    ('ABC Apartments', 'Building A', 1234, 'Main St', 'Cityville', 'CA', '12345', 2000),
    ('XYZ Properties', 'Tower B', 5678, 'Oak Ave', 'Townville', 'NY', '54321', 1995);

INSERT INTO ApartmentUnit (CompanyName, BuildingName, unitNumber, MonthlyRent, squareFootage, AvailableDateForMoveIn)
VALUES
    ('ABC Apartments', 'Building A', '101', 1500, 1000, '2024-05-01'),
    ('XYZ Properties', 'Tower B', '202', 2000, 1200, '2024-04-15');

INSERT INTO Rooms (name, squareFootage, description, UnitRentID)
VALUES
    ('Living Room', 500, 'Spacious with a view', 1),
    ('Bedroom', 300, 'Cozy and well-lit', 1),
    ('Kitchen', 200, 'Fully equipped', 1),
    ('Bedroom', 400, 'Quiet and comfortable', 2),
    ('Bathroom', 100, 'Modern amenities', 2);

INSERT INTO PetPolicy (CompanyName, BuildingName, PetType, PetSize, isAllowed, RegistrationFee, MonthlyFee)
VALUES
    ('ABC Apartments', 'Building A', 'Dog', 'Large', 1, 50, 25),
    ('XYZ Properties', 'Tower B', 'Cat', 'Small', 1, 30, 20);

INSERT INTO Amenities (aType, Description)
VALUES
    ('Swimming Pool', 'Outdoor pool with lounge area'),
    ('Gym', 'State-of-the-art fitness center'),
    ('Parking', 'Covered parking spaces');

INSERT INTO Interests (username, UnitRentID, RoommateCnt, MoveInDate)
VALUES
    ('john_doe', 1, 1, '2024-05-01'),
    ('jane_smith', 2, 0, '2024-06-01');

INSERT INTO AmenitiesIn (aType, UnitRentID)
VALUES
    ('Swimming Pool', 1),
    ('Gym', 1),
    ('Parking', 2);

INSERT INTO Provides (aType, CompanyName, BuildingName, Fee, waitingList)
VALUES
    ('Swimming Pool', 'ABC Apartments', 'Building A', 10, 0),
    ('Gym', 'ABC Apartments', 'Building A', 20, 5),
    ('Parking', 'XYZ Properties', 'Tower B', 30, 2);