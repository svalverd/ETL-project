SELECT * from mass_shootings_2018;

SELECT * from mass_shootings_2019;

SELECT mass_shootings_2018.states, sum(mass_shootings_2018.killed_2018) as killed_2018, 
sum(mass_shootings_2018.injured_2018) as injured_2018,  
sum(mass_shootings_2019.killed_2019) as killed_2019, sum(mass_shootings_2019.injured_2019) as injured_2019
FROM mass_shootings_2018
LEFT JOIN mass_shootings_2019
ON mass_shootings_2018.states = mass_shootings_2019.states
GROUP BY mass_shootings_2018.states;
