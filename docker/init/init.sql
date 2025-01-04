-- Hapus database jika sudah ada
DROP DATABASE IF EXISTS etl_porto1;
DROP DATABASE IF EXISTS metabase_internal;

-- Buat database baru
CREATE DATABASE etl_porto1;
CREATE DATABASE metabase_internal;

-- Buat user dan grant privileges jika belum dibuat
GRANT ALL PRIVILEGES ON etl_porto1.* TO 'niko'@'%';
GRANT ALL PRIVILEGES ON metabase_internal.* TO 'niko'@'%';
FLUSH PRIVILEGES;