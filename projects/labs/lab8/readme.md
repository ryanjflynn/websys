README: Lab 8

Ryan Flynn
flynnr3

These are the commands that I entered for each of the questions. 

Part 1: courses

	CREATE TABLE `websyslab8`.`courses` ( 
	`crn` INT(11) NOT NULL , 
	`prefix` VARCHAR(4) NOT NULL , 
	`number` SMALLINT(4) NOT NULL , 
	`title` VARCHAR(255) NOT NULL , 
	PRIMARY KEY (`crn`)
	) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;

Part 1: students

	CREATE TABLE `websyslab8`.`students` ( 
	`rin` INT(9) NOT NULL , 
	`rcsID` CHAR(7) NOT NULL , 
	`first name` VARCHAR(100) NOT NULL , 
	`last name` VARCHAR(100) NOT NULL , 
	`alias` VARCHAR(100) NOT NULL , 
	`phone` INT(10) NOT NULL , 
	PRIMARY KEY (`rin`)
	) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;

Part 2:
	1.)	Add address fields (street, city, st, zip) to the students table

		ALTER TABLE `students` ADD `street` VARCHAR(100) NOT NULL AFTER `phone`, ADD `city` VARCHAR(100) NOT NULL AFTER `street`, ADD `st` VARCHAR(100) NOT NULL AFTER `city`, ADD `zip` INT(5) NOT NULL AFTER `st`;

	2.)	Add section and year fields to the courses table

		ALTER TABLE `courses` ADD `section` INT(2) NOT NULL AFTER `title`, ADD `year` INT(4) NOT NULL AFTER `section`;

	3.)	CREATE a grades table containing
			id (int primary key, auto increment)
			crn (foreign key)
			rin (foreign key)
			grade (int 3 not null)

		CREATE TABLE `websyslab8`.`grades` ( `id` INT NOT NULL AUTO_INCREMENT , `crn` INT(11) NOT NULL , `rin` INT(9) NOT NULL , `grade` INT(3) NOT NULL , PRIMARY KEY (`id`), FOREIGN KEY (`crn`) REFERENCES courses(`crn`), FOREIGN KEY (`rin`) REFERENCES students(`rin`)) ENGINE = InnoDB

	4.)	INSERT at least 10 courses into the courses table
		INSERT INTO `courses` (`crn`, `prefix`, `number`, `title`, `section`, `year`) 
		VALUES ('35041', 'MATH', '1010', 'Calculus I', '01', '2017'),
		('37350', 'ITWS', '1220', 'IT and Society', '01', '2017'),
		('35439', 'CSCI', '1100', 'Computer Science I', '01', '2017'),
		('35444', 'CSCI', '1200', 'Data Structures', '01', '2017'),
		('36473', 'CSCI', '2300', 'Introduction to Algorithms', '01', '2017'),
		('35090', 'PSYC', '1200', 'General Psychology', '01', '2017'),
		('37889', 'BIOL', '1010', 'Introduction to Biology', '01', '2017'),
		('38132', 'ITWS', '4500', 'Web Science Systems Development', '01', '2017'),
		('38177', 'PSCY', '2220', 'Human Factors in Design', '01', '2017'),
		('35303', 'ECON', '1200', 'Introductory Econonmics', '01', '2017')
		
	5.)	INSERT at least 10 students into the students table
		INSERT INTO `students` (`rin`, `rcsID`, `first name`, `last name`, `alias`, `phone`, `street`, `city`, `st`, `zip`) 
		VALUES ('661467125', 'flynnr3', 'Ryan', 'Flynn', 'Ryan', '8249420', '33 Bow Run', 'Saunderstown', 'Rhode Island', '02874'), 
		('000000001', 'smith1', 'John', 'Smith', 'John', '5551111', '1 Main Street', 'Webtown', 'Rhode Island', '10101'), 
		('000000002', 'smith2', 'Robert', 'Smith', 'Robert', '5552222', '2 Main Street', 'Webtown', 'Rhode Island', '10101'), 
		('000000003', 'smith3', 'Henry', 'Smith', 'Henry', '5553333', '3 Main Street', 'Webtown', 'Rhode Island', '10101'), 
		('000000004', 'smith4', 'James', 'Smith', 'James', '5554444', '4 Main Street', 'Webtown', 'Rhode Island', '10101'), 
		('000000005', 'smith5', 'Chris', 'Smith', 'Chris', '5555555', '5 Main Street', 'Webtown', 'Rhode Island', '10101'),
		('000000006', 'smith6', 'William', 'Smith', 'William', '5556666', '6 Main Street', 'Webtown', 'Rhode Island', '10101'),
		('000000007', 'smith7', 'Carl', 'Smith', 'Carl', '5557777', '7 Main Street', 'Webtown', 'Rhode Island', '10101'),
		('000000008', 'smith8', 'Frank', 'Smith', 'Frank', '5558888', '8 Main Street', 'Webtown', 'Rhode Island', '10101'),
		('000000009', 'smith9', 'Steve', 'Smith', 'Steve', '5559999', '9 Main Street', 'Webtown', 'Rhode Island', '10101')

	6.)	ADD 20 grades into the grades table
		INSERT INTO `grades` (`id`, `crn`, `rin`, `grade`) VALUES (NULL, '35041', '1', '89'), (NULL, '35090', '1', '94'), (NULL, '35090', '2', '78'), (NULL, '35303', '2', '91'), (NULL, '35303', '3', '87'), (NULL, '35439', '3', '77'), (NULL, '35439', '4', '98'), (NULL, '35444', '4', '76'), (NULL, '36473', '5', '96'), (NULL, '37350', '5', '92'), (NULL, '37350', '6', '88'), (NULL, '37889', '6', '86'), (NULL, '37889', '7', '89'), (NULL, '38132', '7', '71'), (NULL, '38132', '8', '97'), (NULL, '38177', '8', '82'), (NULL, '38177', '9', '85'), (NULL, '35041', '9', '86'), (NULL, '35303', '661467125', '90'), (NULL, '37350', '661467125', '91')

	7.)	List all students' data in the following sequences:
		RIN:
			SELECT * FROM `students` ORDER BY `rin`
		last name:
			SELECT * FROM `students` ORDER BY `last name`
		rcs:
			SELECT * FROM `students` ORDER BY `rcsID`
		first name:
			SELECT * FROM `students` ORDER BY `first name`

	8.)	List all students first name and last name if their grade in any course was higher than a 90:
		SELECT `students`.`last name`, `students`.`first name`, `grades`.`grade`
		FROM grades
		LEFT JOIN students ON grades.rin = students.rin
		LEFT JOIN courses ON grades.crn = courses.crn
		WHERE grades.grade >= 90

	9.)	List out the average grade in the second course:
		SELECT AVG(`grade`) FROM `grades` where `crn`=35090

	10.)	List out the number of students:
		SELECT COUNT(`rin`) FROM `students`

The exported database is included in my lab 8 folder. 