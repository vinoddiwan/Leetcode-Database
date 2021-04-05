-- Frederik Müller YT
SELECT 
    FirstName, LastName, City, State
FROM Person
LEFT JOIN Address         -- Always need person data so left join
ON Person.PersonID = Address.PersonId
