# SQA_EX_02 Cevap Dosyasi 

Bu dokümanda, yazılım test teknikleri ve SQA (Software Quality Assurance) eğitimi kapsamında verilen 7 soruya verilen cevaplar yer almaktadır.

---

### 1. Unit test ile integration test arasındaki farklar nelerdir?

Unit test, birim seviyesinde kodun en küçük parçalarını (örneğin fonksiyon ya da sınıf) bağımsız olarak test eder. Bu testler genellikle geliştiriciler tarafından yazılır ve hızlı çalışır.  
Integration test ise birden fazla bileşenin bir araya gelip birlikte doğru çalışıp çalışmadığını kontrol eder. Örneğin bir veritabanı ile API'nin birlikte çalışmasını test etmek integration test kapsamına girer.

---

### 2. Statik tekniklerden walkthroughs ne olduğunu nasıl yapıldığını açıklayınız.

Walkthrough, bir yazılım belgesinin yazarı tarafından gerçekleştirilen bir statik analiz tekniğidir. Yazar, hazırladığı belgeyi bir grup katılımcıya sunar ve adım adım üzerinden geçerek geribildirim alır. Amaç, hataları erkenden tespit etmek ve kaliteyi artırmaktır. Kod yazılmadan önce yapılabilir.

---

### 3. Defect priority ve defect severity nedir? Priority Urgent, severity low; priority low, severity urgent olan iki örnek veriniz.

- **Severity (Şiddet)**: Bir hatanın sistem üzerindeki teknik etkisinin büyüklüğünü ifade eder.  
- **Priority (Öncelik)**: Hatanın ne kadar acil çözülmesi gerektiğini belirtir.

**Örnek 1 (Priority: Urgent, Severity: Low)**: Ana sayfadaki şirket logosunun yanlış görünmesi. Kullanıcı deneyimi açısından acil ama teknik olarak sistem işlevini engellemiyor.  
**Örnek 2 (Priority: Low, Severity: Urgent)**: Raporlama modülünde arka planda gerçekleşen kritik bir veri kaybı. Kullanıcı tarafından hemen fark edilmese bile sistemsel olarak ciddi bir problemdir.

---

### 4. İyi bir test uzmanı nasıl olmalıdır?

İyi bir test uzmanı:

- Detaylara dikkat eder.
- Eleştirel düşünceye sahiptir.
- Sistematik ve sabırlıdır.
- Takım çalışmasına uyumludur.
- Otomasyon ve manuel test araçları hakkında bilgi sahibidir.
- Sürekli öğrenmeye ve gelişime açıktır.

---

### 5. İyi bir test case nasıl olmalıdır?

İyi bir test case:

- Açık ve anlaşılır şekilde yazılmıştır.
- Giriş verileri, beklenen sonuç ve test adımlarını içerir.
- Tek bir durumu test eder.
- Tekrar edilebilir ve izlenebilirdir.
- Gereksiz karmaşıklıktan uzaktır.

---

### 6. Yapay zekânın gelişimi, test tekniklerine pozitif bir etki etmiş midir?

Evet. Yapay zekâ, test süreçlerine önemli katkılar sağlamıştır. Özellikle test otomasyonu, regresyon testlerinin optimizasyonu, hata tahmini ve test veri üretimi gibi alanlarda yapay zekâ modelleri kullanılarak zaman ve maliyet tasarrufu sağlanmaktadır. Ayrıca dinamik olarak test senaryoları oluşturma ve risk bazlı test önerileri yapma gibi işlevler de geliştirilmektedir.

---

### 7. Bir fabrikanın kalite sorumlusu olarak çalıştığınızı düşünün. Kalite kontrol bandına gelen bir tükenmez kalemi nasıl test edersiniz?

- Fiziksel kontrol: Gövde, kapak ve mekanizma (basmalıysa) sağlam mı?  
- Yazma testi: Mürekkep akışı düzgün mü? Kesmiyor mu?  
- Dayanıklılık testi: Düşme, eğilme gibi durumlara karşı dayanıklı mı?  
- Ergonomi: Uzun süreli kullanımda rahatsız ediyor mu?  
- Mürekkep seviyesi kontrolü: Belirlenen sayfa sayısı kadar yazabiliyor mu?  
- Görsel kalite: Logo, renk ve yüzey kaplamasında kusur var mı?

---
