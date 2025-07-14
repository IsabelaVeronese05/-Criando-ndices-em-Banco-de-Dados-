use ecommerce;

create index idx_company_name_hash on thirdpartyseller(company_name) using hash;

create index idx_location_btree on thirdpartyseller(location);

create index idx_product_order_composto on product_order(idproduct, idorders, idcustomer);

create index idx_company_location on thirdpartyseller(company_name, location);
