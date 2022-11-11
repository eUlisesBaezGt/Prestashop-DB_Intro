USE prestashop;

INSERT INTO `PREFIX_accessory`(`id_product_1`, `id_product_2`)
VALUES (1, 2),
       (1, 3),
       (1, 4),
       (1, 5),
       (1, 6),
       (1, 7),
       (1, 8),
       (1, 9),
       (1, 10);
SELECT *
FROM `PREFIX_accessory`;

INSERT INTO `PREFIX_alias` (`alias`, `search`)
VALUES ('test', 'test');
SELECT *
FROM `PREFIX_alias`;

INSERT INTO `PREFIX_address` (`id_country`, `id_state`, `id_customer`, `id_manufacturer`, `id_supplier`, `id_warehouse`,
                              `alias`, `company`, `lastname`, `firstname`, `address1`, `address2`, `postcode`, `city`,
                              `other`, `phone`, `phone_mobile`, `vat_number`, `dni`, `date_add`, `date_upd`, `active`,
                              `deleted`)
VALUES (1, 0, 1, 0, 0, 0, 'Casa', '', 'Baez', 'Enrique', 'Direccion', '', '03800', 'Mexico City', '', '550011223344',
        '', '', '', '2022-01-01 00:00:00', '2022-09-09 00:00:00', 1, 0);
SELECT *
FROM `PREFIX_address`;

INSERT INTO `PREFIX_attachment`(`file`, `file_name`, `file_size`, `mime`)
VALUES ('test', 'test', 0, 'test'),
       ('test2', 'test2', 1000, 'test2');
SELECT *
FROM `PREFIX_attachment`;

INSERT INTO `PREFIX_carrier`(`id_reference`, `name`, `id_tax_rules_group`, `url`, `active`, `deleted`,
                             `shipping_handling`, `range_behavior`, `is_module`, `is_free`, `shipping_external`,
                             `need_range`, `external_module_name`, `shipping_method`, `position`, `max_width`,
                             `max_height`, `max_depth`, `max_weight`, `grade`)
VALUES (1, 'test', 1, 'test', 1, 0, 0, 0, 0, 0, 0, 0, 'test', 0, 0, 0, 0, 0, 0, 0);
SELECT *
FROM `PREFIX_carrier`;

INSERT INTO `PREFIX_cart`(`id_shop_group`, `id_shop`, `id_carrier`, `id_address_delivery`, `id_address_invoice`,
                          `id_currency`, `id_customer`, `id_guest`, `id_lang`, `secure_key`, `recyclable`, `gift`,
                          `gift_message`, `mobile_theme`, `delivery_option`, `allow_seperated_package`, `date_add`,
                          `date_upd`)
VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 'test', 0, 0, 'test', 0, 'test', 0, '2022-01-01 00:00:00', '2022-09-09 00:00:00');
SELECT *
FROM `PREFIX_cart`;


INSERT INTO `PREFIX_cart_product`(`id_cart`, `id_product`, `id_address_delivery`, `id_shop`, `quantity`, `date_add`)
VALUES (1, 1, 1, 1, 1, '2022-01-01 00:00:00');
SELECT *
FROM `PREFIX_cart_product`;

INSERT INTO `PREFIX_category`(`id_parent`, `id_shop_default`, `level_depth`, `nleft`, `nright`, `active`, `date_add`,
                              `date_upd`, `position`, `is_root_category`)
VALUES (1, 1, 1, 1, 1, 1, '2022-01-01 00:00:00', '2022-09-09 00:00:00', 1, 0);
SELECT *
FROM `PREFIX_category`;

INSERT INTO `PREFIX_category_group`(`id_category`, `id_group`)
VALUES (1, 1);
SELECT *
FROM `PREFIX_category_group`;

INSERT INTO `PREFIX_category_lang`(`id_category`, `id_shop`, `id_lang`, `name`, `link_rewrite`, `description`,
                                   `meta_title`, `meta_keywords`, `meta_description`)
VALUES (1, 1, 1, 'test', 'test', 'test', 'test', 'test', 'test');
SELECT *
FROM `PREFIX_category_lang`;

INSERT INTO `PREFIX_category_product`(`id_category`, `id_product`, `position`)
VALUES (1, 1, 1);
SELECT *
FROM `PREFIX_category_product`;

INSERT INTO `PREFIX_country`(`id_zone`, `id_currency`, `iso_code`, `call_prefix`, `active`, `contains_states`,
                             `need_identification_number`, `need_zip_code`, `zip_code_format`, `display_tax_label`)
VALUES (1, 1, 'MX', 52, 1, 0, 0, 0, 'test', 0);
SELECT *
FROM `PREFIX_country`;

INSERT INTO `PREFIX_currency`(`name`, `iso_code`, `numeric_iso_code`, `conversion_rate`, `deleted`, `active`,
                              `unofficial`, `modified`)
VALUES ('MX', 'MX1', '101', 20.56, 0, 1, 0, 0);
SELECT *
FROM `PREFIX_currency`;

INSERT INTO `PREFIX_customer`(`id_gender`, `id_default_group`, `id_lang`, `id_risk`, `company`, `siret`, `ape`,
                              `firstname`, `lastname`, `email`, `passwd`, `last_passwd_gen`, `birthday`, `newsletter`,
                              `ip_registration_newsletter`, `newsletter_date_add`, `optin`, `website`,
                              `outstanding_allow_amount`, `show_public_prices`, `max_payment_days`, `secure_key`,
                              `note`, `active`, `is_guest`, `deleted`, `date_add`, `date_upd`, `reset_password_token`,
                              `reset_password_validity`)
VALUES (1, 1, 1, 1, 'SQL', 'test', 'test', 'Enrique', 'Baez', '0241823@up.edu.mx', 'pass', '2022-01-01 00:00:00',
        '2022-01-01 00:00:00', 0, '192.0.0.1', '2022-01-01 00:00:00', 0, 'kikinacademy.xyz', 0, 0, 0, 'test', 'test', 1,
        0, 0, '2022-01-01 00:00:00', '2022-09-09 00:00:00', 'test', '2022-09-09 00:00:00');
SELECT *
FROM `PREFIX_customer`;

INSERT INTO `PREFIX_customer_session`(`id_customer`, `token`)
VALUES (1, 'test'),
       (2, 'test2');
SELECT *
FROM `PREFIX_customer_session`;

INSERT INTO `PREFIX_cms_role`(`name`, `id_cms`)
VALUES ('test', 1),
       ('test2', 2);
SELECT *
FROM `PREFIX_cms_role`;

INSERT INTO `PREFIX_mail`(`id_mail`, `recipient`, `template`, `subject`, `id_lang`)
VALUES (1, 'test', 'test', 'test', 1),
       (2, 'test2', 'test2', 'test2', 2);
SELECT *
FROM `PREFIX_mail`;