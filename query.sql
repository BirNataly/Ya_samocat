## Задание 1
select count (o."inDelivery") as "count_inDelivery", c.login from "Orders" as o inner join "Couriers" as c on c.id=o."courierId" group by c.login;

# Задание 2

select track, case when finished=true then 2 when cancelled=true then -1 when "inDelivery"=true then 1 else 0 end as status from "Orders";
