CREATE DATABASE gudang;
USE gudang;
CREATE TABLE barang
(
	kode_brg CHAR(4),
    nama_brg VARCHAR(20),
    harga_brg INT(6),
    jumlah INT(3)
);
SHOW TABLES;
DESCRIBE barang;
ALTER TABLE barang
ADD primary key (kode_brg);

alter table barang
modify nama_brg int (6) not null;

ALTER TABLE barang
MODIFY nama_brg VARCHAR(20);

ALTER TABLE barang
MODIFY nama_brg VARCHAR(20)not null;

ALTER TABLE barang
MODIFY harga_brg int(6) not null;

ALTER TABLE barang
MODIFY jumlah int(3) not null;

SELECT *FROM barang;

ALTER TABLE barang
MODIFY harga_brg INT(7);

INSERT INTO barang()
VALUES ('B001', 'SANDAL', '35000', '5'), ('B002', 'BAJU KOTAK-KOTAK', '100000', '10'), ('B003', 'CELANA JEANS', '165000', '15'), ('B004', 'KAOS', '40000', '8'), ('B005', 'TOPI', '25000', '3');

UPDATE barang
SET harga_brg = 99000
WHERE kode_brg = 'B002';

ALTER TABLE barang
MODIFY kode_brg CHAR (4);

CREATE TABLE kategori
(
	kode_kategori INT AUTO_INCREMENT PRIMARY KEY,
    nama_kategori VARCHAR (30)
);

DESCRIBE kategori;

INSERT INTO kategori
VALUES ('1', 'FTWR'), ('2', 'BOTWR'), ('3', 'TOPWR'), ('4', 'UNDWR'), ('5', 'CAPWR');

SELECT *FROM kategori;

ALTER TABLE barang
ADD CONSTRAINT fk_barang_kode_kategori
FOREIGN KEY (kategori_brg) 
REFERENCES kategori(kode_kategori);

ALTER TABLE barang
MODIFY kategori_brg VARCHAR (10);

ALTER TABLE barang
modify kategori_brg INT;

UPDATE barang 
set kategori_brg= '1'
WHERE kode_brg = 'B001';

SELECT *FROM barang;

UPDATE barang SET kategori_brg= '2' WHERE kode_brg ='B002';
UPDATE barang SET kategori_brg= '5' WHERE kode_brg ='B003';
UPDATE barang SET kategori_brg= '3' WHERE kode_brg= 'B004';
UPDATE barang SET kategori_brg= '5' WHERE kode_brg= 'B005';

UPDATE kategori SET kode_kategori= '7' WHERE kode_kategori= '5';

ALTER TABLE barang
ADD constraint fk_barang_kategori foreign key (kategori_brg)
REFERENCES kategori(kode_kategori)
ON DELETE SET NULL
ON UPDATE SET NULL;

DELETE FROM kategori
WHERE kode_kategori = '1' AND nama_kategori='FTWR';

SELECT *FROM kategori;