
USE DenemeVeritabani;
GO

-- Tabloları sırasıyla oluşturuyoruz
CREATE TABLE dbo.kullanicilar (
    kullanici_id INT PRIMARY KEY,
    ad VARCHAR(50),
    soyad VARCHAR(50),
    eposta VARCHAR(100),
    sehir VARCHAR(50),
    kayit_tarihi DATE
);

INSERT INTO dbo.kullanicilar (kullanici_id, ad, soyad, eposta, sehir, kayit_tarihi) VALUES
(1, 'Ahmet', 'Yılmaz', 'ahmet@mail.com', 'İstanbul', '2025-01-15'),
(2, 'Ayşe', 'Kaya', 'ayse@mail.com', 'Ankara', '2025-02-20'),
(3, 'Mehmet', 'Demir', 'mehmet@mail.com', 'İzmir', '2025-03-10'),
(4, 'Fatma', 'Çelik', 'fatma@mail.com', 'Bursa', '2025-04-05'),
(5, 'Can', 'Öztürk', 'can@mail.com', 'İstanbul', '2025-05-12');





SORGULARIM

SELECT ad , soyad ,sehir
FROM dbo.kullanicilar

SELECT ad, soyad, sehir 
FROM dbo.kullanicilar
WHERE sehir IN ('Ankara', 'İzmir');

SELECT ad, soyad, sehir 
FROM dbo.kullanicilar
ORDER BY ad ASC;

SELECT ad, soyad 
FROM dbo.kullanicilar
WHERE ad LIKE '%at%';

SELECT COUNT(*) AS toplam_kullanici 
FROM dbo.kullanicilar;

