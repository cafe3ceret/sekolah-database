# 🏫 Database Sekolah

## 📘 Deskripsi
Project ini merupakan implementasi dasar dari pembuatan **database sekolah** menggunakan **MariaDB (via Laragon + HeidiSQL)**.  
Tugas ini meliputi pembuatan tabel `siswa` dan `nilai`, penerapan **relasi Primary Key dan Foreign Key**, serta operasi dasar SQL seperti `INSERT`, `SELECT`, `JOIN`, `GROUP BY`, `UPDATE`, dan `DELETE`.

---

## ⚙️ Struktur Database
### 🧱 Tabel `siswa`
| Kolom | Tipe Data | Keterangan |
|--------|------------|------------|
| id | INT (PK, Auto Increment) | Primary Key |
| nama | VARCHAR(100) | Nama siswa |
| umur | INT | Usia siswa |
| jurusan | VARCHAR(50) | Jurusan siswa |

### 🧩 Tabel `nilai`
| Kolom | Tipe Data | Keterangan |
|--------|------------|------------|
| id | INT (PK, Auto Increment) | Primary Key |
| siswa_id | INT (FK → siswa.id) | Relasi ke tabel siswa |
| mata_pelajaran | VARCHAR(100) | Nama mata pelajaran |
| nilai | INT | Nilai siswa |

---

## 💾 Contoh Query Penting
```sql
-- Menampilkan seluruh data siswa
SELECT * FROM siswa;

-- Menampilkan siswa jurusan IPA
SELECT nama FROM siswa WHERE jurusan = 'IPA';

-- Menampilkan nilai rata-rata tiap siswa
SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama;

-- Update jurusan siswa
UPDATE siswa SET jurusan = 'Teknik Komputer' WHERE nama = 'Eko';

-- Hapus salah satu data nilai
DELETE FROM nilai WHERE id = 10;


