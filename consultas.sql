--- Juntar tabelas
select * from Absenteeism_at_work a
left join compensation b
on a.ID = b.ID
left join Reasons r
on a.Reason_for_absence = r.Number;

--- média de faltas em horas
select AVG(Absenteeism_time_in_hours)
from Absenteeism_at_work;

--- motivo de faltas: consulta médica 
select top 1 count(ID), Reason_for_absence
from Absenteeism_at_work
group by Reason_for_absence
order by count(ID) desc;

--- Porcentagem do motivo pelo qual mais faltam: consulta médica
select sum(Absenteeism_time_in_hours) as unique_total ---424
from Absenteeism_at_work
where Reason_for_absence = 23;

select sum(Absenteeism_time_in_hours) as total --- total 5124
from Absenteeism_at_work;

--- porcentagem do motivo 21.7%

--- Dia da semana que mais faltam: Segunda-feira
select sum(Absenteeism_time_in_hours),  Day_of_the_week
from Absenteeism_at_work
group by Day_of_the_week
order by sum(Absenteeism_time_in_hours) desc;
--- total de faltas em horas nesse dia: 1489
select sum(Absenteeism_time_in_hours)
from Absenteeism_at_work
where Day_of_the_week = 2;

--- id com maiores faltas
select top 3(ID), Absenteeism_time_in_hours
from Absenteeism_at_work
order by Absenteeism_time_in_hours desc;

--- quantidade de funcionários
select count(ID)
from Absenteeism_at_work;

--- total de faltas em horas
select sum(Absenteeism_time_in_hours)
from Absenteeism_at_work;

--- otimizar o query
select a.ID, r.Reason, body_mass_index,
CASE when Body_mass_index < 18.5 Then 'Underweight'
	when Body_mass_index between 18.5 and 25 Then 'Healthy weight'
	when Body_mass_index between 25 and 30 Then 'Overweight'
	when Body_mass_index > 30 Then 'Obese'
ELSE 'Unknow' END as BMI_category,

CASE when Month_of_absence IN (12,1,2) Then 'Winter'
	when Month_of_absence IN (3,4,5) Then 'Spring'
	when Month_of_absence IN (6,7,8) Then 'Summer'
	when Month_of_absence IN (9,10,11) Then 'Fall'
ELSE 'Unknow' END as Season,
Month_of_absence, Day_of_the_week, Transportation_expense, Education, Son, 
Social_drinker, Social_smoker, Pet, Disciplinary_failure, Age, 
Work_load_Average_day, Absenteeism_time_in_hours
from Absenteeism_at_work a
left join compensation b
on a.ID = b.ID
left join Reasons r
on a.Reason_for_absence = r.Number;