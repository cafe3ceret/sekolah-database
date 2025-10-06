-- ==================================================
--  DATABASE SEKOLAH
-- ==================================================

-- 1. Membuat Database
CREATE DATABASE sekolah;
USE sekolah;

-- 2. Membuat Tabel
CREATE TABLE siswa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    umur INT,
    jurusan VARCHAR(50)
);

CREATE TABLE nilai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    siswa_id INT,
    mata_pelajaran VARCHAR(100),
    nilai INT,
    FOREIGN KEY (siswa_id) REFERENCES siswa(id)
);

-- 3. Mengisi Data (INSERT)
INSERT INTO siswa (nama, umur, jurusan)
VALUES
("Alep", 16, "IPA"),
("Dio", 17, "IPS"),
("Kenza", 16, "IPA"),
("Azzam", 17, "Bahasa"),
("Eko", 16, "IPS");

INSERT INTO nilai (siswa_id, mata_pelajaran, nilai)
VALUES
(1, "Matematika", 85),
(1, "Bahasa Inggris", 90),
(2, "Matematika", 78),
(2, "Bahasa Inggris", 88),
(3, "Matematika", 92),
(3, "Bahasa Inggris", 87),
(4, "Matematika", 80),
(4, "Bahasa Inggris", 75),
(5, "Matematika", 83),
(5, "Bahasa Inggris", 89);

-- 4. Query Data (SELECT)
-- a. Tampilkan semua siswa
SELECT * FROM siswa;

-- b. Tampilkan nama siswa dengan jurusan IPA
SELECT nama FROM siswa WHERE jurusan = 'IPA';

-- c. Tampilkan nilai rata-rata tiap siswa (JOIN + GROUP BY)
SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama;

-- 5. Update & Delete
-- a. Ubah jurusan siswa bernama Eko menjadi Teknik Komputer
UPDATE siswa
SET jurusan = 'Teknik Komputer'
WHERE nama = 'Eko';

-- b. Hapus salah satu data nilai siswa (misal id = 10)
DELETE FROM nilai
WHERE id = 10;

-- ==================================================
-- SELESAI ✅
-- ==================================================
