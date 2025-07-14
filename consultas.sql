use ecommerce;

select company_name, count(*) as total_pessoas
from thirdpartyseller
group by company_name
order by total_pessoas desc
limit 1;

select location, group_concat(distinct company_name) as departamentos
from thirdpartyseller
group by location;

select tps.company_name, count(distinct po.idcustomer) as total_empregados
from thirdpartyseller tps
join product_order po on tps.product_id = po.idproduct
                      and tps.order_id = po.idorders
                      and tps.customer_id = po.idcustomer
group by tps.company_name;
