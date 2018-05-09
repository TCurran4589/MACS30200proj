#55I089
/*
Select 
	Year,
    DistrictCode,
	District,
    SchoolCategory,
    Grade,
	sum(Hispanic_Female + Hispanic_Male) as 'Hispanic',
	sum(NativeAmerican_Female + NativeAmerican_Male) as 'Native American',
	sum(Asian_Male + Asian_Female) as 'Asian',
	sum(Black_Female + Black_Male) as 'African American',
	sum(PacificIslander_Female + PacificIslander_Male) as 'Pacific Islander',
	sum(White_Male + White_Female) as 'White', 
	sum(TwoRaces_Female + TwoRaces_Male) as 'Two or More Races',
	sum(Total) as 'Total'

from 
	Test_SchoolEnrollment
Where SchoolCategory = 'Charter School' AND left(DistrictCode, 2) = 55 AND Year >= 2011
Group by Year, Grade;*/

#OKCPS
Select 
	Year,
    Test_SchoolEnrollment.County as 'County',
    DistrictCode,
	District,
    Test_SchoolEnrollment.SiteName as 'School.Name',
    Test_SchoolEnrollment.SiteCode as 'Site.Number',
    Test_SchoolEnrollment.SchoolCode as 'School.Code',
    Test_SchoolEnrollment.SchoolCategory as 'School Type',
	sum(Hispanic_Female + Hispanic_Male) as 'Hispanic',
	sum(NativeAmerican_Female + NativeAmerican_Male) as 'Native American',
	sum(Asian_Male + Asian_Female) as 'Asian',
	sum(Black_Female + Black_Male) as 'African American',
	sum(PacificIslander_Female + PacificIslander_Male) as 'Pacific Islander',
	sum(White_Male + White_Female) as 'White', 
	sum(TwoRaces_Female + TwoRaces_Male) as 'Two or More Races',
	sum(Total) as 'Total'

from 
	Test_SchoolEnrollment
Where
	Year >= 2014 AND Year <= 2016
Group By
	Year, 
    Test_SchoolEnrollment.SchoolCode
Order By
	District, SiteName, Year

#55I089
/*
Select 
	Year,
    DistrictCode,
    SiteCode,
    SchoolCode,
	District,
    SiteLevel,
    SchoolCategory,
	SiteName, 
	sum(Hispanic_Female + Hispanic_Male) as 'Hispanic',
	sum(NativeAmerican_Female + NativeAmerican_Male) as 'Native American',
	sum(Asian_Male + Asian_Female) as 'Asian',
	sum(Black_Female + Black_Male) as 'African American',
	sum(PacificIslander_Female + PacificIslander_Male) as 'Pacific Islander',
	sum(White_Male + White_Female) as 'White', 
	sum(TwoRaces_Female + TwoRaces_Male) as 'Two or More Races',
	sum(Total) as 'Total'

from 
	Test_SchoolEnrollment
Where SchoolCategory Not LIKE '%Charter%' and District = 'OKLAHOMA CITY'
Group by SiteName, Year;
*/