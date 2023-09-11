## Задание 1
select count (o."inDelivery") as "count_inDelivery", c.login from "Orders" as o inner join "Couriers" as c on c.id=o."courierId" group by c.login;

#Задание 1 исправлено 
##список логинов курьеров с количеством их заказов в статусе «В доставке» (поле inDelivery = true)
select c.login, count (o."inDelivery") as "count_orders_in_delivery"  from "Orders" as o inner join "Couriers" as c on c.id=o."courierId" where o."inDelivery"=true group by c.login;  

# Задание 2
select track, case when finished=true then 2 when cancelled=true then -1 when "inDelivery"=true then 1 else 0 end as status from "Orders";
