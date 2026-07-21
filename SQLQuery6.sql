-- Adım 1: Geçici tabloyu sıfırdan oluşturalım
DROP TABLE IF EXISTS #Calisanlar;

CREATE TABLE #Calisanlar (
    AdSoyad VARCHAR(50),
    Departman VARCHAR(50),
    Maas INT
);

-- Adım 2: İçine 5 satır veri ekleyelim
INSERT INTO #Calisanlar VALUES
('Ahmet', 'Yazılım', 45000),
('Ayşe', 'Yazılım', 50000),
('Mehmet', 'Pazarlama', 35000),
('Fatma', 'Pazarlama', 40000),
('Can', 'Yazılım', 60000);

SELECT AdSoyad, Maas
FROM #Calisanlar
WHERE Departman = 'Yazılım';

 SELECT AdSoyad, Maas 
 FROM #Calisanlar 
 WHERE  Departman='Pazarlama';

 --Her departmanın toplam maaş bütçesini ve o depertmanda kaç kişi çalıştığını getiren kodu yazacağım.
 SELECT Departman,
 COUNT(*) AS CalisanSayisi,
 SUM(Maas) AS ToplamMaasButcesi
  FROM #Calisanlar 
  GROUP BY Departman;
  
  SELECT Departman,
  COUNT(*) AS KisiSayisi,
  AVG(Maas) AS OrtalamaMaas,
  MAX(Maas) AS EnYuksekMaas 
  FROM #Calisanlar
  Group BY Departman;
-- her deratmanın toplan maasını hesaplayan ve sadece toplam maaşını
--100.000 den fazla olan departmanları getiren soruyu yazınız.
SELECT Departman,
SUM(Maas) AS ToplamMaas
FROM #Calisanlar 
GROUP BY Departman 
HAVING SUM(Maas)>100000 
