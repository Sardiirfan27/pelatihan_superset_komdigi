-- Hapus tabel jika sudah ada
DROP TABLE IF EXISTS hr_data;

-- Buat tabel HR
CREATE TABLE hr_data (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100),
    departemen VARCHAR(50),
    jabatan VARCHAR(50),
    gaji DECIMAL(12,2),
    tahun_masuk INT,
    status_kerja VARCHAR(20),
    kota VARCHAR(50)
);

-- Tambahkan 20 data dummy (tahun 2020–2025)
INSERT INTO hr_data (nama, departemen, jabatan, gaji, tahun_masuk, status_kerja, kota) VALUES
('Andi', 'IT', 'Data Analyst', 12000000, 2020, 'Tetap', 'Jakarta'),
('Budi', 'IT', 'Software Engineer', 15000000, 2021, 'Tetap', 'Bandung'),
('Citra', 'HR', 'HR Officer', 9000000, 2020, 'Tetap', 'Surabaya'),
('Dewi', 'Finance', 'Accountant', 10000000, 2022, 'Tetap', 'Jakarta'),
('Eko', 'Marketing', 'Marketing Officer', 8500000, 2023, 'Kontrak', 'Bandung'),
('Farah', 'IT', 'DevOps Engineer', 16000000, 2021, 'Tetap', 'Jakarta'),
('Gilang', 'HR', 'Recruiter', 9500000, 2023, 'Kontrak', 'Surabaya'),
('Hana', 'Finance', 'Financial Analyst', 11000000, 2024, 'Tetap', 'Jakarta'),
('Indra', 'IT', 'Data Engineer', 15500000, 2022, 'Tetap', 'Bandung'),
('Joko', 'Marketing', 'Content Strategist', 9200000, 2024, 'Kontrak', 'Surabaya'),
('Karin', 'Finance', 'Auditor', 10500000, 2023, 'Tetap', 'Jakarta'),
('Lina', 'HR', 'Training Specialist', 9800000, 2024, 'Kontrak', 'Bandung'),
('Maya', 'IT', 'ML Engineer', 17000000, 2025, 'Tetap', 'Jakarta'),
('Niko', 'Finance', 'Accountant', 10200000, 2021, 'Tetap', 'Surabaya'),
('Oka', 'Marketing', 'SEO Specialist', 8700000, 2022, 'Kontrak', 'Bandung'),
('Putri', 'HR', 'Compensation Analyst', 9700000, 2022, 'Tetap', 'Jakarta'),
('Rian', 'IT', 'Backend Engineer', 14800000, 2023, 'Tetap', 'Surabaya'),
('Sinta', 'Marketing', 'Brand Manager', 11500000, 2025, 'Tetap', 'Jakarta'),
('Tono', 'Finance', 'Controller', 13000000, 2020, 'Tetap', 'Bandung'),
('Umar', 'IT', 'Frontend Engineer', 14500000, 2024, 'Tetap', 'Surabaya');
