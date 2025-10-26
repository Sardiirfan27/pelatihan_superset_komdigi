-- DROP TABLE IF EXISTS proyek_karyawan;
-- DROP TABLE IF EXISTS proyek;
-- DROP TABLE IF EXISTS karyawan;
-- DROP TABLE IF EXISTS departemen;
-- DROP TABLE IF EXISTS lokasi;

CREATE TABLE lokasi (
    id INT PRIMARY KEY,
    nama_kantor VARCHAR(100),
    kota VARCHAR(50),
    provinsi VARCHAR(50),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6)
);

INSERT INTO lokasi (id, nama_kantor, kota, provinsi, latitude, longitude) VALUES
(1, 'Head Office Jakarta', 'Jakarta', 'DKI Jakarta', -6.208763, 106.845599),
(2, 'Branch Bandung', 'Bandung', 'Jawa Barat', -6.917464, 107.619123),
(3, 'Branch Surabaya', 'Surabaya', 'Jawa Timur', -7.257472, 112.752088),
(4, 'Branch Bali', 'Denpasar', 'Bali', -8.650000, 115.216667),
(5, 'Branch Medan', 'Medan', 'Sumatera Utara', 3.595196, 98.672223);


CREATE TABLE departemen (
    id INT PRIMARY KEY,
    nama_departemen VARCHAR(50)
);

INSERT INTO departemen (id, nama_departemen) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'Engineering'),
(4, 'Sales'),
(5, 'Support');



CREATE TABLE karyawan (
    id INT PRIMARY KEY,
    nama VARCHAR(100),
    umur INT,
    jenis_kelamin VARCHAR(10),
    tanggal_masuk DATE,
    gaji DECIMAL(10,2),
    departemen_id INT,
    lokasi_id INT,
    FOREIGN KEY (departemen_id) REFERENCES departemen(id),
    FOREIGN KEY (lokasi_id) REFERENCES lokasi(id)
);



INSERT INTO karyawan (id, nama, umur, jenis_kelamin, tanggal_masuk, gaji, departemen_id, lokasi_id) VALUES
(1, 'Andi Pratama', 28, 'Pria', '2020-01-15', 8000000, 1, 1),
(2, 'Budi Santoso', 35, 'Pria', '2018-03-20', 12000000, 2, 1),
(3, 'Citra Dewi', 26, 'Wanita', '2021-07-10', 9000000, 3, 1),
(4, 'Dina Maharani', 29, 'Wanita', '2019-11-05', 10000000, 4, 1),
(5, 'Eka Wijaya', 32, 'Pria', '2017-05-30', 11000000, 5, 1),
(6, 'Fajar Ramadhan', 24, 'Pria', '2022-02-01', 7000000, 1, 2),
(7, 'Gina Larasati', 30, 'Wanita', '2016-09-12', 11500000, 2, 2),
(8, 'Hendra Kurnia', 40, 'Pria', '2015-06-20', 15000000, 3, 2),
(9, 'Intan Putri', 23, 'Wanita', '2020-08-15', 9500000, 4, 2),
(10, 'Joko Santika', 27, 'Pria', '2021-01-10', 8500000, 5, 2),
(11, 'Kiki Rahma', 31, 'Wanita', '2018-05-12', 10500000, 1, 3),
(12, 'Lala Nugroho', 29, 'Wanita', '2019-03-25', 9800000, 2, 3),
(13, 'Miko Prasetya', 36, 'Pria', '2017-07-18', 14000000, 3, 3),
(14, 'Nadia Paramita', 25, 'Wanita', '2021-01-20', 8800000, 4, 3),
(15, 'Omar Hidayat', 33, 'Pria', '2016-12-10', 11500000, 5, 3),
(16, 'Pia Amalia', 27, 'Wanita', '2020-06-05', 9100000, 1, 4),
(17, 'Qori Setiawan', 38, 'Pria', '2015-11-30', 15000000, 2, 4),
(18, 'Rani Kurniawati', 24, 'Wanita', '2022-03-01', 7200000, 3, 4),
(19, 'Sandi Permana', 30, 'Pria', '2018-08-15', 10200000, 4, 4),
(20, 'Tari Dewi', 28, 'Wanita', '2019-10-20', 9500000, 5, 4),
(21, 'Umar Akbar', 26, 'Pria', '2021-05-10', 8700000, 1, 5),
(22, 'Vina Maharani', 32, 'Wanita', '2017-09-15', 11000000, 2, 5),
(23, 'Wawan Hidayat', 39, 'Pria', '2014-12-01', 14500000, 3, 5),
(24, 'Xena Putri', 23, 'Wanita', '2022-02-20', 7500000, 4, 5),
(25, 'Yoga Prasetyo', 35, 'Pria', '2016-07-05', 12000000, 5, 1),
(26, 'Zara Lestari', 28, 'Wanita', '2019-01-10', 9800000, 1, 2),
(27, 'Agus Santoso', 31, 'Pria', '2018-03-25', 10700000, 2, 3),
(28, 'Bima Ramadhan', 27, 'Pria', '2020-06-12', 9200000, 3, 4),
(29, 'Caca Larasati', 33, 'Wanita', '2016-10-30', 11500000, 4, 5),
(30, 'Deni Pratama', 29, 'Pria', '2019-07-05', 9900000, 5, 1),
(31, 'Evi Putri', 25, 'Wanita', '2021-01-15', 8700000, 1, 2),
(32, 'Fajar Nugroho', 36, 'Pria', '2015-08-20', 13500000, 2, 3),
(33, 'Gilang Kurnia', 24, 'Pria', '2022-05-01', 7200000, 3, 4),
(34, 'Hani Dewi', 31, 'Wanita', '2017-11-12', 10800000, 4, 5),
(35, 'Indra Hidayat', 28, 'Pria', '2019-03-20', 9600000, 5, 1),
(36, 'Jeni Maharani', 27, 'Wanita', '2020-08-05', 9100000, 1, 2),
(37, 'Kris Permana', 34, 'Pria', '2016-02-15', 12500000, 2, 3),
(38, 'Lala Setiawan', 29, 'Wanita', '2019-05-10', 9800000, 3, 4),
(39, 'Miko Dewi', 32, 'Pria', '2017-10-01', 11200000, 4, 5),
(40, 'Nadia Prasetya', 26, 'Wanita', '2021-02-20', 8800000, 5, 1),
(41, 'Omar Ramadhan', 30, 'Pria', '2018-07-15', 10200000, 1, 2),
(42, 'Pia Larasati', 25, 'Wanita', '2021-06-12', 8800000, 2, 3),
(43, 'Qori Hidayat', 33, 'Pria', '2016-03-10', 11500000, 3, 4),
(44, 'Rani Dewi', 29, 'Wanita', '2019-09-01', 9700000, 4, 5),
(45, 'Sandi Pratama', 31, 'Pria', '2017-12-20', 10700000, 5, 1),
(46, 'Tari Nugroho', 28, 'Wanita', '2019-01-30', 9500000, 1, 2),
(47, 'Umar Santoso', 34, 'Pria', '2016-04-15', 12500000, 2, 3),
(48, 'Vivi Ramadhan', 26, 'Wanita', '2021-03-10', 8800000, 3, 4),
(49, 'Willy Larasati', 29, 'Pria', '2019-06-05', 10000000, 4, 5),
(50, 'Xander Dewi', 27, 'Pria', '2020-11-12', 9100000, 5, 1),
(51, 'Yuni Paramita', 30, 'Wanita', '2018-05-05', 10200000, 1, 2),
(52, 'Zidan Akbar', 35, 'Pria', '2017-09-15', 12000000, 2, 3),
(53, 'Alya Maharani', 28, 'Wanita', '2019-02-10', 9800000, 3, 4),
(54, 'Bayu Prasetya', 33, 'Pria', '2016-12-20', 11500000, 4, 5),
(55, 'Cindy Dewi', 26, 'Wanita', '2020-07-05', 9000000, 5, 1),
(56, 'Dani Ramadhan', 27, 'Pria', '2021-01-20', 9200000, 1, 2),
(57, 'Elisa Putri', 29, 'Wanita', '2019-06-15', 9700000, 2, 3),
(58, 'Farhan Nugroho', 31, 'Pria', '2017-11-01', 10800000, 3, 4),
(59, 'Gita Larasati', 25, 'Wanita', '2021-02-01', 8800000, 4, 5),
(60, 'Hadi Pratama', 34, 'Pria', '2016-04-20', 12500000, 5, 1),
(61, 'Ika Dewi', 28, 'Wanita', '2019-01-15', 9500000, 1, 2),
(62, 'Joko Ramadhan', 33, 'Pria', '2017-07-05', 11200000, 2, 3),
(63, 'Kiki Putri', 26, 'Wanita', '2020-05-10', 9000000, 3, 4),
(64, 'Lukas Santoso', 35, 'Pria', '2016-10-25', 12000000, 4, 5),
(65, 'Mira Maharani', 27, 'Wanita', '2021-03-12', 9100000, 5, 1),
(66, 'Nico Prasetya', 29, 'Pria', '2019-09-20', 9700000, 1, 2),
(67, 'Olivia Dewi', 24, 'Wanita', '2022-02-01', 7200000, 2, 3),
(68, 'Pandu Ramadhan', 31, 'Pria', '2017-06-12', 10800000, 3, 4),
(69, 'Qila Larasati', 28, 'Wanita', '2019-01-05', 9500000, 4, 5),
(70, 'Riko Pratama', 33, 'Pria', '2016-08-10', 11500000, 5, 1),
(71, 'Sinta Dewi', 26, 'Wanita', '2021-04-15', 8800000, 1, 2),
(72, 'Tono Santoso', 34, 'Pria', '2016-03-20', 12500000, 2, 3),
(73, 'Uli Paramita', 27, 'Wanita', '2020-07-01', 9100000, 3, 4),
(74, 'Vino Hidayat', 29, 'Pria', '2019-05-12', 9800000, 4, 5),
(75, 'Wulan Dewi', 25, 'Wanita', '2021-01-15', 8700000, 5, 1),
(76, 'Xavi Prasetya', 32, 'Pria', '2017-12-20', 11200000, 1, 2),
(77, 'Yuni Larasati', 28, 'Wanita', '2019-03-01', 9500000, 2, 3),
(78, 'Zidan Dewi', 35, 'Pria', '2016-05-10', 12000000, 3, 4),
(79, 'Alya Paramita', 26, 'Wanita', '2020-06-12', 8800000, 4, 5),
(80, 'Bayu Santoso', 30, 'Pria', '2018-07-05', 10200000, 5, 1),
(81, 'Cindy Pratama', 29, 'Wanita', '2019-08-15', 9700000, 1, 2),
(82, 'Dani Dewi', 27, 'Pria', '2020-05-10', 9100000, 2, 3),
(83, 'Elisa Ramadhan', 31, 'Wanita', '2017-11-12', 10800000, 3, 4),
(84, 'Farhan Prasetya', 28, 'Pria', '2019-01-20', 9500000, 4, 5),
(85, 'Gita Dewi', 26, 'Wanita', '2021-03-15', 8800000, 5, 1),
(86, 'Hadi Santoso', 33, 'Pria', '2016-06-05', 11500000, 1, 2),
(87, 'Ika Paramita', 25, 'Wanita', '2021-02-01', 8700000, 2, 3),
(88, 'Joko Dewi', 34, 'Pria', '2017-07-10', 12500000, 3, 4),
(89, 'Kiki Ramadhan', 27, 'Wanita', '2020-08-12', 9100000, 4, 5),
(90, 'Lukas Pratama', 29, 'Pria', '2019-06-15', 9800000, 5, 1),
(91, 'Mira Dewi', 26, 'Wanita', '2021-01-20', 8800000, 1, 2),
(92, 'Nico Santoso', 32, 'Pria', '2017-09-05', 11000000, 2, 3),
(93, 'Olivia Paramita', 28, 'Wanita', '2019-03-10', 9500000, 3, 4),
(94, 'Pandu Dewi', 35, 'Pria', '2016-06-20', 12000000, 4, 5),
(95, 'Qila Santoso', 26, 'Wanita', '2020-05-15', 8800000, 5, 1),
(96, 'Riko Dewi', 30, 'Pria', '2018-07-01', 10200000, 1, 2),
(97, 'Sinta Paramita', 29, 'Wanita', '2019-06-12', 9700000, 2, 3),
(98, 'Tono Dewi', 27, 'Pria', '2020-03-05', 9100000, 3, 4),
(99, 'Uli Ramadhan', 31, 'Wanita', '2017-11-20', 10800000, 4, 5),
(100, 'Vino Pratama', 28, 'Pria', '2019-01-10', 9500000, 5, 1),
(101, 'Aulia Prasetya', 27, 'Wanita', '2020-04-12', 9100000, 1, 1),
(102, 'Bayu Santoso', 34, 'Pria', '2016-07-20', 12500000, 2, 2),
(103, 'Citra Ramadhan', 29, 'Wanita', '2019-03-15', 9700000, 3, 3),
(104, 'Deni Larasati', 31, 'Pria', '2017-09-05', 10800000, 4, 4),
(105, 'Eka Dewi', 26, 'Wanita', '2021-01-10', 8800000, 5, 5),
(106, 'Fajar Paramita', 28, 'Pria', '2019-06-12', 9500000, 1, 1),
(107, 'Gina Pratama', 25, 'Wanita', '2021-03-05', 8700000, 2, 2),
(108, 'Hendra Santoso', 33, 'Pria', '2016-11-20', 11500000, 3, 3),
(109, 'Intan Ramadhan', 27, 'Wanita', '2020-05-15', 9100000, 4, 4),
(110, 'Joko Larasati', 30, 'Pria', '2018-07-01', 10200000, 5, 5),
(111, 'Kiki Dewi', 29, 'Wanita', '2019-02-10', 9800000, 1, 1),
(112, 'Lukas Paramita', 32, 'Pria', '2017-08-15', 11200000, 2, 2),
(113, 'Mira Santoso', 26, 'Wanita', '2021-04-01', 8800000, 3, 3),
(114, 'Nico Ramadhan', 31, 'Pria', '2016-06-12', 10800000, 4, 4),
(115, 'Olivia Larasati', 28, 'Wanita', '2019-01-20', 9500000, 5, 5),
(116, 'Pandu Dewi', 27, 'Pria', '2020-03-15', 9100000, 1, 1),
(117, 'Qila Pratama', 30, 'Wanita', '2018-05-10', 10200000, 2, 2),
(118, 'Riko Santoso', 29, 'Pria', '2019-09-01', 9700000, 3, 3),
(119, 'Sinta Ramadhan', 26, 'Wanita', '2021-06-12', 8800000, 4, 4),
(120, 'Tono Larasati', 33, 'Pria', '2016-04-20', 11500000, 5, 5);



CREATE TABLE proyek (
    id INT PRIMARY KEY,
    nama_proyek VARCHAR(100),
    tanggal_mulai DATE,
    tanggal_selesai DATE,
    status VARCHAR(20)
);

INSERT INTO proyek (id, nama_proyek, tanggal_mulai, tanggal_selesai, status) VALUES
(1, 'HR Onboarding System', '2023-01-01', '2023-06-30', 'Selesai'),
(2, 'Website Company', '2023-01-15', '2023-07-15', 'Berjalan'),
(3, 'Mobile App', '2023-02-15', '2023-12-31', 'Berjalan'),
(4, 'ERP System', '2022-05-01', '2023-05-01', 'Selesai'),
(5, 'Marketing Campaign', '2023-07-01', NULL, 'Berjalan'),
(6, 'Support Dashboard', '2023-03-01', '2023-08-01', 'Selesai'),
(7, 'Data Analytics', '2022-09-01', '2023-03-31', 'Selesai'),
(8, 'Cloud Migration', '2021-11-01', '2022-10-31', 'Selesai'),
(9, 'AI Chatbot', '2023-04-01', NULL, 'Berjalan'),
(10, 'CRM System', '2022-07-01', '2023-01-31', 'Selesai');


CREATE TABLE proyek_karyawan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    proyek_id INT,
    karyawan_id INT,
    FOREIGN KEY (proyek_id) REFERENCES proyek(id),
    FOREIGN KEY (karyawan_id) REFERENCES karyawan(id)
);


INSERT INTO proyek_karyawan (proyek_id, karyawan_id) VALUES
-- Proyek 1: HR Onboarding System (HR)
(1, 31),
(1, 83),
(1, 55),

-- Proyek 2: Website Company (IT / Engineering)
(2, 3),
(2, 88),
(2, 5),
(2, 118),

-- Proyek 3: Mobile App (IT / Engineering)
(3, 7),
(3, 8),
(3, 9),
(3, 10),

-- Proyek 4: ERP System (Engineering)
(4, 11),
(4, 12),
(4, 13),
(4, 14),

-- Proyek 5: Marketing Campaign (Sales)
(5, 20),
(5, 9),
(5, 19),
(5, 54),
(5, 59),

-- Proyek 6: Support Dashboard (Support/IT)
(6, 15),
(6, 16),
(6, 17),
(6, 18),

-- Proyek 7: Data Analytics (IT)
(7, 19),
(7, 20),
(7, 26),
(7, 27),

-- Proyek 8: Cloud Migration (Engineering)
(8, 28),
(8, 29),
(8, 30),
(8, 38),

-- Proyek 9: AI Chatbot (IT/Engineering)
(9, 32),
(9, 33),
(9, 34),
(9, 35);
