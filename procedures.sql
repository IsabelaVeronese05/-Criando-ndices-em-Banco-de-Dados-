use ecommerce;
delimiter //

create procedure manage_client (
    in p_option int,
    in p_idclient int,
    in p_fname varchar(10),
    in p_lname varchar(10),
    in p_cpf char(11),
    in p_phone varchar(15),
    in p_email varchar(100),
    in p_address varchar(100)
)
begin
case 
when p_option = 1 then
insert into client(fname, lname, cpf, phone, email, address)
values(p_fname, p_lname, p_cpf, p_phone, p_email, p_address);

when p_option = 2 then
update client
set fname = p_fname,
lname = p_lname,
 phone = p_phone,
email = p_email,
address = p_address
where idclient = p_idclient;

 when p_option = 3 then
delete from client
 where idclient = p_idclient;

when p_option = 4 then
select * from client where idclient = p_idclient;
end case;
end //

delimiter ;
