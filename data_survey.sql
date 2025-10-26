
-- drop TABLE IF EXISTS survei_kepuasan_departemen;
-- Membuat tabel survei kepuasan dalam format "wide" (pivoted)
CREATE TABLE survei_kepuasan_pivot (
    nama_departemen VARCHAR(50) PRIMARY KEY,
    kompensasi_salary DECIMAL(3, 1),
    keseimbangan_kerja_wlb DECIMAL(3, 1),
    kenyamanan_fasilitas DECIMAL(3, 1),
    lingkungan_tim DECIMAL(3, 1),
    peluang_karir DECIMAL(3, 1)
);

-- Menyisipkan data hasil survei ke dalam tabel
INSERT INTO survei_kepuasan_pivot (
    nama_departemen,
    kompensasi_salary,
    keseimbangan_kerja_wlb,
    kenyamanan_fasilitas,
    lingkungan_tim,
    peluang_karir
) VALUES
('Engineering', 3.5, 2.8, 4.0, 4.3, 3.9),
('Sales', 4.1, 3.5, 3.8, 4.0, 3.2),
('Support', 3.0, 4.5, 4.2, 3.9, 3.7);


