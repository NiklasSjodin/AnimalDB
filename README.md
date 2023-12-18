# Animal Adoption Database

This repository contains SQL scripts for creating and populating tables related to animal adoption. The database includes tables for Animals, Adopters, and Adoptions.

## Tables

### Animals

The `Animals` table stores information about animals available for adoption.

- `AnimalID`: Unique identifier for the animal (Primary Key)
- `AnimalName`: Name of the animal
- `Species`: Species of the animal
- `Age`: Age of the animal
- `Gender`: Gender of the animal
- `Taken`: Indicates whether the animal is taken (1 for taken, 0 for available)

### Adopters

The `Adopters` table stores information about individuals interested in animal adoption.

- `AdopterID`: Unique identifier for the adopter (Primary Key)
- `FirstName`: First name of the adopter
- `LastName`: Last name of the adopter
- `PhoneNumber`: Phone number of the adopter
- `EmailAdress`: Email address of the adopter

### Adoptions

The `Adoptions` table tracks the adoption transactions.

- `AdoptionID`: Unique identifier for the adoption (Primary Key)
- `AnimalID_FK`: Foreign key referencing the `AnimalID` in the `Animals` table
- `AdopterID_FK`: Foreign key referencing the `AdopterID` in the `Adopters` table
- `AdoptionDate`: Date of the adoption

## Sample Data

Sample data has been provided for each table to demonstrate the structure and relationships.

## SQL Queries

Several SQL queries have been included to showcase the functionality of the database:

- List of all animals
- List of all adopters and their contact information
- List of all adoptions with adopter names, animal names, and adoption dates
- Find animals adopted by a specific adopter
- Bonus: List of available animals that are not adopted

Feel free to explore the SQL scripts, execute queries, and modify the database structure to suit your needs. Happy coding!
