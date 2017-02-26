ALTER TABLE invoice_filter ADD COLUMN branches VARCHAR(255) NULL;

CREATE TABLE `customer_filter` (
  `id` int(11) NOT NULL,
  `branches` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;