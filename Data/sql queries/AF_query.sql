Select
	AF_SchoolLetterGrade.Year,
    AF_SchoolLetterGrade.CountyName,
    AF_SchoolLetterGrade.DistrictName, 
    AF_SchoolLetterGrade.SchoolName,
    AF_SchoolLetterGrade.SchoolCode, 
    `Summary_AF`.`LowGrade`, `Summary_AF`.`HighGrade`, 
    `Summary_AF`.`ReportCardType`, 
    `Summary_AF`.`Performance_Multiplier`, 
    `Summary_AF`.`GrowthMultiplier`, 
    `Summary_AF`.`BottomGrowth_Multiplier`, 
    `Summary_AF`.`TotalBonusPoints`, 
    `Summary_AF`.`OveralSchoolGrade`, 
    `Summary_AF`.`OverallLetterGrade`,
  `Performance_AF`.`ELA_ExamCounty`, 
    `Performance_AF`.`ELA_GrowthIndex`, 
    `Performance_AF`.`ELA_LetterGrade`, 
    `Performance_AF`.`Math_ExamCounty`, 
    `Performance_AF`.`Math_GrowthIndex`, 
    `Performance_AF`.`Math_LetterGrade`, 
    `Performance_AF`.`Science_ExamCounty`, 
    `Performance_AF`.`Science_GrowthIndex`, 
    `Performance_AF`.`Science_LetterGrade`, 
    `Performance_AF`.`SocialStudies_ExamCounty`, 
    `Performance_AF`.`SocialStudies_GrowthIndex`, 
    `Performance_AF`.`SocialStudies_LetterGrade`, 
    `Performance_AF`.`Writing_ExamCounty`, 
    `Performance_AF`.`Writing_GrowthIndex`, 
    `Performance_AF`.`Writing_LetterGrade`, 
    `Performance_AF`.`Overall_ExamCounty`, 
    `Performance_AF`.`Overall_GrowthIndex`, 
    `Performance_AF`.`Overall_LetterGrade`,
    AF_SchoolLetterGrade.IndexScore, 
    AF_SchoolLetterGrade.School_Level,
    AF_SchoolLetterGrade.LetteGrade,
	BottomQuartile_Af.ELA_ExamCount as 'ELA_ExamCount_bq',
    BottomQuartile_Af.ELA_GrowthIndex as 'ELA_GrowthIndex_bq',
    BottomQuartile_Af.ELA_LetterGrade as 'ELA_LetterGradeas_bq',
    BottomQuartile_Af.Math_ExamCount as 'Math_ExamCount_bq',
    BottomQuartile_Af.Math_GrowthIndex as 'Math_GrowthIndex_bq',
    BottomQuartile_Af.Math_LetterGrade as 'Math_LetterGrade_bq',
    BottomQuartile_Af.OverallExamCount as 'OverallExamCount_bq',
    BottomQuartile_Af.OverallGrowthIndex as 'OverallGrowthIndex_bq',
    BottomQuartile_Af.OverallLetterGrade as 'OverallLetterGrade_bq',
    `BonusPoints_AF`.`AttendenceRate`, 
    `BonusPoints_AF`.`AttendenceRate_Bonus`, 
    `BonusPoints_AF`.`DropOutRate`, 
    `BonusPoints_AF`.`DropOutRate_Bonus`,
    `BonusPoints_AF`.`AP_participationIndex`, 
    `BonusPoints_AF`.`AP_PerformanceIndex`, 
    `BonusPoints_AF`.`AP_Bonus`, 
    `BonusPoints_AF`.`GradRate`, 
    `BonusPoints_AF`.`GradRate_Bonus`, 
    `BonusPoints_AF`.`LowPerfm_Grade8`,
    `BonusPoints_AF`.`LowPerfm_Grade8_Bonus`, 
    `BonusPoints_AF`.`CollegeEntranceExam_Participation`, 
    `BonusPoints_AF`.`CollegeEntranceExam_Performance`, 
    `BonusPoints_AF`.`CollegeEntranceExam_Bonus`, 
    `BonusPoints_AF`.`EOIPerformanceRate`, 
    `BonusPoints_AF`.`EOIPerformanceRate_Bonus`, 
    `BonusPoints_AF`.`AchievedGrowthTarget`, 
    `BonusPoints_AF`.`AchievedGrowthTarget_Bonus`
from
	AF_SchoolLetterGrade 
    left join Summary_AF on AF_SchoolLetterGrade.Year =Summary_AF.Year AND AF_SchoolLetterGrade.SchoolCode=Summary_AF.SchoolCode
    left join BonusPoints_AF on AF_SchoolLetterGrade.Year = BonusPoints_AF.Year AND AF_SchoolLetterGrade.SchoolCode = BonusPoints_AF.FullCode
    left join Performance_AF on AF_SchoolLetterGrade.Year = Performance_AF.Year AND AF_SchoolLetterGrade.SchoolCode = Performance_AF.SchoolCode
    left join BottomQuartile_Af on AF_SchoolLetterGrade.SchoolCode = BottomQuartile_Af.SchoolCode
    
where
	AF_SchoolLetterGrade.SDEgroup != 'Z1' AND AF_SchoolLetterGrade.SDEgroup != 'V1' AND AF_SchoolLetterGrade.Year >= 2014
Order By
	AF_SchoolLetterGrade.CountyName, AF_SchoolLetterGrade.DistrictName, AF_SchoolLetterGrade.SchoolName, AF_SchoolLetterGrade.Year

