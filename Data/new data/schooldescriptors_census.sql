/*


Delete from SchoolDescriptors
Where RecordNumber >= 0;

LOAD DATA LOCAL INFILE 'Users/thomascurran/Desktop/Data/2008SchoolDescriptors.csv'
INTO TABLE SchoolDescriptors
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE 'Users/thomascurran/Desktop/Data/2009SchoolDescriptors.csv'
INTO TABLE SchoolDescriptors
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE 'Users/thomascurran/Desktop/Data/2010SchoolDescriptors.csv'
INTO TABLE SchoolDescriptors
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE 'Users/thomascurran/Desktop/Data/2011SchoolDescriptors.csv'
INTO TABLE SchoolDescriptors
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE 'Users/thomascurran/Desktop/Data/2012SchoolDescriptors.csv'
INTO TABLE SchoolDescriptors
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE 'Users/thomascurran/Desktop/Data/2013SchoolDescriptors.csv'
INTO TABLE SchoolDescriptors
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE 'Users/thomascurran/Desktop/Data/2014SchoolDescriptors.csv'
INTO TABLE SchoolDescriptors
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE 'Users/thomascurran/Desktop/Data/2015SchoolDescriptors.csv'
INTO TABLE SchoolDescriptors
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
Ignore 1 Lines;

LOAD DATA LOCAL INFILE 'Users/thomascurran/Desktop/Data/2016SchoolDescriptors.csv'
INTO TABLE SchoolDescriptors
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
Ignore 1 Lines;

*/


Select
	sc.Yr,
    sc.SchoolCode,
    sc.DistrictCode,
    sc.Site,
    sc.AvgIncome,
    sc.AvgPropValADM,
    sc.Unemployment,
    sc.PovertyRate,
    sc.SingleParentFam,
    sc.FRL,
    sc.College,
    sc.HighSchool,
    sc.BelowHS,
    sd.FallEnrollment,
    sd.NonSpEdTeachers,
    sd.AvgTeacherSalary,
    sd.AdvancedDegrees,
    sd.AvgYrsExperience,
    sd.SpEdTeachersFTE,
    sd.CounselorsFTE,
    sd.OtherStaffFTE,
    sd.AdministratorsFTE
    
From SchoolDescriptors sd left join SchoolCensusData sc on sd.Schoolcode = sc.SchoolCode AND sd.YR = sc.YR
Where sd.YR >= 2014 AND sd.YR <= 2016
Order By sd.Site, sd.Yr;

