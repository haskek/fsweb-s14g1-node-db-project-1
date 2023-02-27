-- Veritabanı Sorguları

-- Posta kodu 1010 olan tüm müşterileri bulun

-- id'si 11 olan tedarikçinin telefon numarasını bulun

SELECT phone FROM [Suppliers] WHERE SupplierID=11 

-- Verilen ilk 10 siparişi, sipariş tarihine göre azalan şekilde listeleyin

SELECT * from [Orders] order by OrderDate desc limit 10

-- Londra, Madrid veya Brezilya'da yaşayan tüm müşterileri bulun

SELECT * from [Orders] WHERE City="London" or City="Madrid" or Country="Brazil"

-- "The Shire" için bir müşteri kaydı ekleyin, ilgili kişi adı "Bilbo Baggins", adres - "Bag End" içinde "1 Hobbit-Hole", posta kodu "111" ve ülke "Middle Earth"

INSERT INTO [Customers] values("The Shire","Bilbo Baggins","Bag End","1 Hobbit-Hole","111","Middle Earth")

-- Posta kodu "11122" olarak değişecek şekilde Bilbo Baggins kaydını güncelleyin

UPDATE [Customers] SET PostalCode="11122" WHERE CustomerName="The Shire" 

-- (Zorlayıcı Görev) Müşteriler tablosunda kaç farklı şehrin saklandığını keşfetmek için bir sorgu bulun. Tekrarlar çift sayılmamalıdır

SELECT distinct City FROM Customers

-- (Zorlayıcı Görev) 20 karakterden uzun adları olan tüm tedarikçileri bulun. Adın uzunluğunu almak için "length(SupplierName)" kullanabilirsiniz.

SELECT * FROM Suppliers WHERE length(SupplierName)>20