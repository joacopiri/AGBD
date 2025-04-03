select * from crime_scene_report where date = "20180115" and type = "murder"  and city = "SQL City"
select * from person where name like "Annabel%" and address_street_name = "Franklin Ave"
select * from person where address_street_name = "Northwestern Dr" order by address_number desc limit 1
select * from person p join drivers_license dl on p.license_id=dl.id where p.license_id = "118009" 
select * from person p join drivers_license dl on p.license_id=dl.id where p.license_id = "490173"
select * from interview i join person p on i.person_id = p.id where p.name like "morty schapiro"
select * from interview i join person p on i.person_id = p.id where p.name like "annabel miller"
select * from get_fit_now_member g join person p on g.person_id = p.id  where g.id like "48Z%"
select * from get_fit_now_member g join person p on g.person_id = p.id  where g.id like "48Z%"  order by membership_start_date asc limit 1
select * from interview i join get_fit_now_member g on i.person_id = g.person_id where g.person_id like "67318"
select * from drivers_license d join person p on p.license_id = d.id  where p.license_id like 423327 and d.plate_number like "%H42W%"
INSERT INTO solution VALUES (1, 'Jeremy Bowers'); SELECT value FROM solution;

Congrats, you found the murderer! But wait, there's more... If you think you're up for a challenge, try querying the interview transcript of the murderer to find the real villain behind this crime. If you feel especially confident in your SQL skills, try to complete this final step with no more than 2 queries. Use this same INSERT statement with your new suspect to check your answer.