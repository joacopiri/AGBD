select * from inhabitant
select * from inhabitant where state='friendly'
select * from inhabitant where state="friendly" and job="weaponsmith"
select * from inhabitant where state="friendly" and job like "%smith"
select personid from inhabitant where name="Stranger"
select gold from inhabitant where name="Stranger"
select * from item where owner is null
update item set owner=20 where owner is null
select * from item where owner="20"
select * from inhabitant where state="friendly" and job="dealer" or job="merchant"
update item set owner=15 where item="ring" or item="teapot"
update inhabitant set name="roberto" where personid=20
select * from inhabitant where job="baker" order by gold desc
select * from inhabitant where job="pilot"
select i.name from inhabitant i inner join village v on i.personid=v.chief where v.name="Onionville"
select count(*) from inhabitant i inner join village v on i.villageid=v.villageid where v.name="Onionville" and i.gender="f"
select i.name from inhabitant i inner join village v on i.villageid=v.villageid where v.name="Onionville" and i.gender="f"