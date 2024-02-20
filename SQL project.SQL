CREATE TABLE employee (
    column1 id as int,
    column2 fname,
    column3 lname,
    column4 age as int,
    column5 hiredate as date,
);

CREATE TABLE Employees
(
    ID int,
    FirstName varchar,
    LastName varchar,
    Age int
    Hiredate date
);

    CREATE DATABASE Employee_Info;
        INSERT INTO employees (id, fname, lname, age, hiredate)
        VALUES ('01', 'Alan', 'Palmer', '32', '12/15/2019');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('02', 'Susan', 'Shepherd', '28', '07/21/2015');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('03', 'Justin', 'Ward', '43', '08/24/2017');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('04', 'Alan', 'Smith', '30', '06/22/2017');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('05', 'James', 'Betternot', '26', '06/22/2017');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('06', 'Ralph', 'White', '44', '06/23/2017');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('07', 'Leonard', 'Nimoy', '72', '12/14/2007');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('08', 'Janice', 'Rand', '61', '07/06/2016');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('09', 'Harry', 'Mudd', '65', '07/06/2020');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('10', 'Hikaru', 'Sulu', '58', '03/21/2015');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('11', 'James', 'Kirk', '59', '01/02/2014');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('12', 'Leonard', 'McCoy', '65', '08/21/2015');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('13', 'Pavel', 'Chekov', '44', '10/15/2014');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('14', 'Christopher', 'Pike', '32', '11/24/2014');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('15', 'Darth', 'Vader', '124', '03/22/2015');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('16', 'Boba', 'Fett', '49', '03/22/2015');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('17', 'Luke', 'Skywalker', '66', '11/11/2019');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('18', 'Han', 'Solo', '73', '02/03/2012');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('19', 'Kylo', 'Ren', '34', '06/14/2020');

        INSERT INTO employee (id, fname, lname, age, hiredate)
        VALUES ('20', 'Galen', 'Erso', '55', '06/14/2020');

CREATE TABLE Employee(
    ID int,
    Address1 varchar(255),
    Address2 varchar(255),
    City varchar(255),
    State varchar(225),
    Zip Int,
);

CREATE TABLE address (
    id Int,
    address1, 
    address2,
    city,
    state,
    zip
);

INSERT INTO address (id, address1, address2, city, state, zip)
VALUES ('01', '1211 Sudan St', 'N/A', 'Mobile', 'AL', '36609');

CREATE TABLE contact (
    id int,
    cellphone, 
    homephone,
    email
);
INSERT INTO contact (id, cellphone, homephone, email)
VALUES ('01', '5121325343', '5125234234', 'apalmer@yachtmail.com');

INSERT INTO contact (id, cellphone, homephone, email)
VALUES ('02', '5129739834', '5129847873', 'sshepard@yorkdevtraining.com');

INSERT INTO contact (id, cellphone, homephone, email)
VALUES ('03', '6453898502', '6459872345', 'jsward2007@yahoo.com');

INSERT INTO contact (id, cellphone, homephone, email)
VALUES ('04', '8763238756', '8763736548', 'alsmith999@gmail.com');

INSERT INTO contact (id, cellphone, homephone, email)
VALUES ('05', '8880345966', '8888567987', 'james.betternot@hotmail.com');

INSERT INTO contact (id, cellphone, homephone, email)
VALUES ('06', '3322827765', '3328760098', 'ralph.white264@aol.com');

SELECT fname, lname, age, city, state
FROM employee
INNER JOIN address ON employee.id = address.id
WHERE fname='Alan';

SELECT  fname, lname, age, city, state, email
FROM ((employee
INNER JOIN address ON employee.id = address.id)
INNER JOIN contact ON employee.id = contact.id)
WHERE email='james.betternot@hotmail.com';

SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

SELECT fname, lname, age, city, state
FROM employee
INNER JOIN address ON employee.id = address.id
WHERE fname='Alan';

SELECT fname, lname, age, city, state, email
    FROM employee
 INNER JOIN address ON employee.id = address.id
 INNER JOIN contact ON employee.id = contact.id
 WHERE email='james.betternot@hotmail.com';

 UPDATE contact
 SET cellphone = '4383991212'
 WHERE fname = 'Susan' AND lname = 'Shepherd'(select fname, lname from employee where id ='02');
 
 
 WHERE fname = (select fname, lname from employee where id ='02');


UPDATE contact
 SET cellphone = '4383991212'
 WHERE id = 02;

 WHERE employee.fname = 'Susan' AND employee.lname = 'Shepherd';

 SELECT fname, lname, age, address1, hiredate, address2, city, state, cellphone, homephone, email
 FROM employee
 INNER JOIN address ON employee.id = address.id
 INNER JOIN contact ON employee.id = contact.id
 WHERE employee.id, address.id, contact.id ='02';


 SELECT fname, lname, age, address1, hiredate, address2, city, state, cellphone, homephone, email
 FROM employee
 INNER JOIN address ON employee.id = address.id
 INNER JOIN contact ON employee.id = contact.id
 WHERE email='sshepard@yorkdevtraining.com';

UPDATE contact
 SET cellphone = '4383991212'
 WHERE fname = (select fname, lname from employee where id ='02');

 UPDATE contact
 SET cellphone = '4383991212'
 WHERE fname, lname = (select fname, lname from employee where id ='02');

 UPDATE contact
 SET cellphone = '4383991212'
 FROM contact 
 JOIN employee ON employee.id = contact.id
 WHERE ID = 02;

UPDATE contact 
SET cellphone = 4383991212
WHERE id IN ( 
    SELECT id
    FROM employee
    WHERE id = 01
); 