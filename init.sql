
CREATE TABLE public.stock (
     id serial NOT NULL,
     product_id int4 NOT NULL DEFAULT 0,
     qty int8 NOT NULL DEFAULT 0,
     CONSTRAINT stock_pk PRIMARY KEY (id)
);

create unique index u1_stock on stock(product_id);

CREATE TABLE public.product (
     id serial NOT NULL,
     "name" varchar(60) NOT NULL,
     description varchar(60) NOT NULL,
     price int8 NOT NULL DEFAULT 0,
     category varchar(20) NOT NULL,
     CONSTRAINT product_pk PRIMARY KEY (id)
);

create table reserved_stock(
     id          int not null,
     status      varchar(20) ,
     resources   varchar(1000) not null,
     expires     timestamp not null,
     created     timestamp default current_timestamp not null,
     CONSTRAINT reserved_stock_pk PRIMARY KEY (id)
);

CREATE TABLE public.payment (
     id serial NOT NULL,
     order_id varchar(50) NOT NULL,
     amt int8 NOT NULL DEFAULT 0,
     CONSTRAINT payment_pk PRIMARY KEY (id, order_id)
);

CREATE SEQUENCE seq_reserved_payment START 1;

CREATE TABLE public.reserved_payment (
     id int4 NOT NULL,
     status varchar(20) NULL ,
     resources varchar(1000) NOT NULL,
     expires timestamp NOT NULL,
     created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
     CONSTRAINT reserved_payment_pk PRIMARY KEY (id)
);

create table stock_order_history (
      product_id             int  not null,
      order_id         varchar(40) not null,
      adjustment_type varchar(20) default ' ' not null,
      qty             bigint default 0 not null,
      CONSTRAINT stock_order_history_pk PRIMARY KEY (product_id, order_id)
);

CREATE SEQUENCE seq_reserved_stock START 1;

CREATE TABLE order_item (
     id serial NOT NULL,
     order_id varchar(40) NOT NULL,
     username varchar(20) NULL,
     status varchar(20) NULL,
     product_code varchar(70) NOT NULL,
     amt int8 NOT NULL DEFAULT 0,
     qty int8 NOT NULL DEFAULT 0,
     CONSTRAINT order_item_pk PRIMARY KEY (id)
);

create unique index order_item_u1 on order_item(order_id);


