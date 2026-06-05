use [Workplace_safety_Data]
Go

--Replace the nulls in incident cost columns with 0
update [dbo].[Workplace Safety data]
set [Incident_Cost] = 0
where [Incident_Cost] is Null

--Remove duplicates from entire table 
--First we identify if there's duplicates -- result shows no duplicates 

select [Date], [Injury_Location],[Gender],[Age_Group],[Incident_Type],[Days_Lost],[Plant],[Report_Type],[Shift],
[Department],[Incident_Cost],[WkDay],[Month],[Year], COUNT(*) as Duplicates 
from [dbo].[Workplace Safety data]
group by [Date], [Injury_Location],[Gender],[Age_Group],[Incident_Type],[Days_Lost],[Plant],[Report_Type],[Shift],
[Department],[Incident_Cost],[WkDay],[Month],[Year]
having count(*) >1

--	How many incidents occurred at each plant?
select [Plant], COUNT([Incident_Type]) as No_of_incidents 
from [dbo].[Workplace Safety data]
group by [Plant]
order by COUNT([Incident_Type]) asc

--total incident cost per department?
 select department,SUM([Incident_Cost]) as Total_incident_cost
 from [dbo].[Workplace Safety data]
 group by [Department]

--incident type that resulted in the highest total days lost?
select [Incident_Type], SUM([Days_Lost]) as Total_days_lost 
from [dbo].[Workplace Safety data]
group by [Incident_Type]
order by SUM([Days_Lost]) desc

--maximum number of days lost in a single incident, for each incident type 
select [Incident_Type], MAX([Days_Lost]) 
from [dbo].[Workplace Safety data]
group by [Incident_Type]

-- distribution of incident types by shift
select [Shift],[Incident_Type], count(*) as no_of_incidents
from [dbo].[Workplace Safety data]
group by [Shift],[Incident_Type]

-- average incident cost for each injury location
select [Injury_Location], Round(AVG([Incident_Cost]),2) as Avg_incident_cost 
from [dbo].[Workplace Safety data]
group by [Injury_Location]

-- age group with the highest number of incidents
select [Age_Group], count(*) as No_of_incidents 
from [dbo].[Workplace Safety data]
group by [Age_Group]
order by No_of_incidents desc

--No of incidents reported as 'Lost Time' by each plant
select plant,count([Report_Type]) as Lost_time_report
from [dbo].[Workplace Safety data]
where [Report_Type] = 'Lost Time' 
group by [Plant]
order by Lost_time_report desc

--department that had the highest number of 'Crush & Pinch' incidents?
select [Department], count([Incident_Type]) as [No of crush & pinch]
from [dbo].[Workplace Safety data]
where [Incident_Type] = 'Crush & Pinch'
group by [Department]
order by [No of crush & pinch] desc 

--Which plants reported the most "Near Miss" incidents?
select top 1 plant,count(Report_Type) as Near_misses
from [dbo].[Workplace Safety data]
where Report_Type= 'Near Miss'
group by [Plant]
order by Near_misses desc

--What is the total number of incidents by year and month?
select [Year],[Month], count(*) as No_of_incidents
from [dbo].[Workplace Safety data]
group by [Year],[Month]
order by [Month] asc

--Which gender has the most reported incidents?
select [Gender], count(*) as No_of_incidents 
from [dbo].[Workplace Safety data]
group by [Gender]

--What is the total cost of incidents per year?
select [Year], SUM([Incident_Cost]) as Total_incident_cost
from [dbo].[Workplace Safety data]
group by [Year]
order by [Year] asc 

--Which incident resulted in the highest cost? 
select top 1 [Incident_Type], max ([Incident_Cost]) as Highest_cost
from [dbo].[Workplace Safety data]
group by [Incident_Type]
order by Highest_cost desc

-- total cost of incidents for each report type
select [Report_Type], SUM([Incident_Cost]) as total_incident_costs 
from [dbo].[Workplace Safety data]
group by [Report_Type]
order by total_incident_costs desc 

--departments that had incidents with more than 2 days lost
select [Department], count(*) as No_of_incidents  
from [dbo].[Workplace Safety data]
where [Days_Lost]>2
group by [Department]
order by No_of_incidents desc

--average number of days lost per incident type
select [Incident_Type], Round(AVG([Days_Lost]),3) as [Avg no of days lost]
from [dbo].[Workplace Safety data]
group by [Incident_Type]
order by [Avg no of days lost] desc

-- distribution of incidents by shift (Day, Afternoon, Night)?
select [Shift], count(*) as no_of_incidents
from [dbo].[Workplace Safety data]
group by [Shift]

--What months have the highest number of incidents?
select [Month], count(*) as no_of_incidents
from [dbo].[Workplace Safety data]
group by [Month]
order by no_of_incidents desc

-- total cost of "Vehicle" related incidents?
select SUM([Incident_Cost]) as [Vehicle related incidents]
from [dbo].[Workplace Safety data]
where [Incident_Type] = 'Vehicle'

-- age group  most affected by "Falling Object" incidents?
select [Age_Group], count(*) as [Falling Object incidents]
from [dbo].[Workplace Safety data]
where [Incident_Type] = 'Falling Object'
group by [Age_Group]
order by [Falling Object incidents] desc
