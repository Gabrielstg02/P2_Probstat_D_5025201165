# P2_Probstat_D_5025201165

# P2_PROBSTAT_F_5025201039

## Nama-NRP
| Nama             | NRP        |
|------------------|------------|
| Abd. Wahid  | 5025201039 |

<br />

## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

![soal 1](https://user-images.githubusercontent.com/70510279/170801862-fb8feada-e470-4bdd-90c8-2b1b050563ca.jpg)

Hasil yang didapatkan pada tabel di atas menunjukkan bahwa kadar saturasi oksigen responden ke-3 sebanyak 67 ketika belum melakukan aktivitas A, dan ketika telah melakukan aktivitas A mendapat sebesar 70.

- a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

    Pertama-pertama masukkan semua data yang telah tersedia di tabel sebuah variabel sebagai berikut

        ```
         orang.ke = c(seq(1:9))
         oksigen.sebelum = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
         oksigen.sesudah = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
         data = data.frame(orang.ke,oksigen.sebelum, oksigen.sesudah)
         n = 9
        ```  

    Kemudian cari standar deviasinya. Standar deviasi sebelum dan sesudah aktivitas sebagai berikut

        ```
         selisih = data$oksigen.sesudah - data$oksigen.sebelum
         cat("Standar deviasi selisih pasangan pengamatan : ")
         standardev = sd(selisih)
         standardev
        ```

      <img width="1267" alt="image" src="https://user-images.githubusercontent.com/78538191/170873225-e9153b09-ea51-4ab7-b32b-d15638f431ec.png"> 
    

</br>

   - b. Carilah nilai t (p-value)
      Mencari nilai t (p-value) digunakan fungsi `t.test` sebagai berikut
        ```
         # Menggunakan t-test
         t.test(before, after, alternative = "greater", var.equal = FALSE)
       ```    
       Didapatkan hasil berikut ini:
       
      <img width="616" alt="image" src="https://user-images.githubusercontent.com/86004023/170858480-4e5c7d24-b5be-4ad1-8c0f-554450bbb4ca.png">
  
  </br>

   - c. Tentukanlah Apakah Terdapat Pengaruh yang Signifikan Secara Statistika dalam Hal Kadar Saturasi Oksigen, Sebelum dan Sesudah Melakukan Aktivitas 𝐴  jika Diketahui Tingkat Signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
       Langkah pertama yaitu melihat hasil komparasi dua variabel berikut
        ```
         var.test(before, after)
       ```    
       Didapatkan hasil sebagai berikut:
       
       <img width="593" alt="image" src="https://user-images.githubusercontent.com/86004023/170858996-31f369f7-66ad-4279-9b12-2562a1f0e027.png">
       
       Langkah berikutnya berguna untuk melihat pengaruh jika tingkat signifikasi 5% dan tidak ada pengaruh yang signifikan secara statistika, dapat dilihat sebagai berikut:
       ```
         t.test(before, after, mu = 0, alternative = "two.sided", var.equal = TRUE)
       ```  
      Dapat dilihat hasil sebagai berikut:

      <img width="692" alt="image" src="https://user-images.githubusercontent.com/86004023/170859040-a1c6aaaa-0fe0-4834-8778-eedcf4530034.png">

</br>

## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

  - a. Apakah Anda setuju dengan klaim tersebut?
    
    Setuju, Karena dihasilkan bahwa hasil uji z menolak H0
    
    <img width="223" alt="image" src="https://user-images.githubusercontent.com/86004023/170864898-71408114-19ec-4d85-92af-c91e08e90283.png">
    
    </br>

  - b. Jelaskan maksud dari output yang dihasilkan!
       Diketahui n = 100, Rata-Rata (X̄) = 23500, dan standar deviasi(σ) = 3900 Maka null hipotesis adalah
       Maka null hipotesis adalah 
          ```
          H0 : μ = 20000
          ```
          Alternatif hipotesisnya yaitu
          ```
          H1 : μ > 20000
          ```

       <img width="472" alt="image" src="https://user-images.githubusercontent.com/86004023/170864744-4f24236a-662f-4b7c-a92e-c253bd78cb65.png">
       
       </br>

  - c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
  
       Mencari nilai z dengan cara berikut
       </br>
       ![image-removebg-preview](https://user-images.githubusercontent.com/70510279/170823253-92e9ca27-09f7-4d40-a51c-9fd4392bb742.png)

       Kemudian didapatkan nilai p-value nya dengan cara berikut:
               
       ![image-removebg-preview (2)](https://user-images.githubusercontent.com/70510279/170823338-3d86d1f2-14dc-458c-af6a-eb06f0fd8333.png)

       Dari hasil diatas dapat disimpulkan bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun
       </br>
  
## Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

 ![image](https://user-images.githubusercontent.com/70510279/170834251-73d308da-69c9-4e86-b2b8-4917e598efae.png)
 
   Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :
     
    A. H0 dan H1
  
    B. Hitung Sampel Statistik
  
    C. Lakukan Uji Statistik (df = 2) 
  
    D. Nilai Kritikal
  
    E. Keputusan
  
    F. Kesimpulan

  </br>
  
  - A. H0 dan H1
    Perhitungan H0 didapatkan sebagai berikut
    </br>
    ![image](https://user-images.githubusercontent.com/70510279/170837176-254c2846-c1b7-47c0-aa9f-c3b2e5db149a.png)
    </br>
    
    Perhitungan H1 didapatkan sebagai berikut
    </br>
    ![image](https://user-images.githubusercontent.com/70510279/170837297-542b8a9e-309b-41be-92c5-880e284beef4.png)
    
    </br>

  - B. Hitung Sampel Statistik
      Menghitung sampel statistik digunakan fungsi `tsum.test` sebagai berikut
        ```
        tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
        ```
  
      <img width="604" alt="image" src="https://user-images.githubusercontent.com/86004023/170865478-78c8a8b0-6542-4473-ac95-97d6a5b29471.png">
      
      </br>

  - C. Lakukan Uji Statistik (df = 2)
      Gunakan bantuan library `mosaic`
      <img width="396" alt="image" src="https://user-images.githubusercontent.com/86004023/170865651-d9e6448e-6e54-4820-89a4-b188babe3fc8.png">
      
      Didapatkan hasil berikut:
     <img width="1118" alt="image" src="https://user-images.githubusercontent.com/86004023/170865622-20a96143-5e9d-480e-9803-896a4d94e7aa.png">

      </br>
  
  - D. Nilai Kritikal 
       Menghitung sampel statistik digunakan fungsi `qchisq` menggunakan `df=2` sebagai berikut
       Didapatkan hasil sebagai berikut:

       <img width="401" alt="image" src="https://user-images.githubusercontent.com/86004023/170865886-1926e058-fe48-48d9-971e-dc2a9788c6b7.png">

       </br>
       
  - E. Keputusan
       Langkah untuk mendapat keputusan menggunakan bantuan dengan Teori Keputusan

       Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. 
       Aksinya adalah : `({a}_{a∈A})`
       Kemungkinan konsekuensi : `({c}_{c∈C})` (tergantung pada keadaan dan tindakan)
       Maka keputusan dapat dibuat dengan `t.test`

       </br>
       
  - F. Kesimpulan
       Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.


       </br>

## Soal 4
> Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing.
   Jika : diketahui dataset https://intip.in/datasetprobstat1
   
   <img width="65" alt="image" src="https://user-images.githubusercontent.com/86004023/170869855-f39c2cbd-234f-49aa-9dbe-1402cd438b39.png">

   H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama

   Maka Kerjakan atau Carilah: 
   
    A. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1, grup 2, grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
    
    B. Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? Apa hipotesis dan kesimpulan yang dapat diambil?
    
    C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
    
    D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?
    
    E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.
    
    F. Visualisasikan data dengan ggplot2
    
   </br>

   - A. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1, grup 2, grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
   
     Langkah pertama mengambil data dari link yang telah disediadakan

      ```
        myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt")) 
        dim(myFile)
        head(myFile)
      ```
      <img width="167" alt="image" src="https://user-images.githubusercontent.com/86004023/170866715-540535c8-7d2f-44f9-8a7e-79182e6e02c5.png">

      Selanjutnya membuat myFile menjadi group 
      
      ```
        myFile$Group <- as.factor(myFile$Group)
        myFile$Group = factor(myFile$Group,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih"))
      ```

      Setelah itu, dicek apakah dia menyimpan nilai di groupnya
      
      ```
        class(myFile$Group)
      ```

      Lalu bagi tiap valuer menjadi 3 bagian ke 3 grup
      
      ```
        group1 <- subset(myFile, Group=="Kucing Oren")
        group2 <- subset(myFile, Group=="Kucing Hitam")
        group3 <- subset(myFile, Group=="Kucing Putih")
      ```
      
      </br>

   - B. Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? Apa hipotesis dan kesimpulan yang dapat diambil?

        Mencari Homogeneity of variances bisa menggunakan command sebagai berikut
        
        ```
        bartlett.test(Length~Group, data=dataoneway)
        ```
        
        Didapatkan nilai dari p-value yaitu = 0.8054. 
        Kesimpulan yang didapatkan yaitu Bartlett's K-squared memiliki nilai sebesar 0.43292 dan df bernilai 2
      
   - C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
        Mencari Homogeneity of variances bisa menggunakan command sebagai berikut
        
        ```
        qqnorm(group1$Length)
        qqline(group1$Length)
        ```

        ![image](https://user-images.githubusercontent.com/70510279/170848819-3b70668f-ba55-4d57-b297-a14cb7d7218a.png)
        
        </br>

   - D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?
        
        Didapatkan nilai dari p-value yaitu = 0.8054. 
        
        </br>
   
   - E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

        ```
        model1 <- lm(Length~Group, data=myFile)
        ```
        
        Selanjutnya menggunakan command 
        
        ```
        anova(model1)
        ```
        
        Lalu menggunakan model Post-hoc Tukey HSD sebagai berikut
        
        ```
        TukeyHSD(aov(model1))
        ```
        </br>

   - F. Visualisasikan data dengan ggplot2
  
        ```
        library(ggplot2)
        ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")
        ```
        
        </br>

## Soal 5
> Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100 ̊C, 125 ̊C dan 150 ̊C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: 
  Data Hasil Eksperimen. 
  
   <img width="332" alt="image" src="https://user-images.githubusercontent.com/86004023/170867530-b11cf2dc-f084-403b-9028-f38097bb1d40.png">

   Dengan data tersebut:
   
     A. Buatlah plot sederhana untuk visualisasi data
     
     B. Lakukan uji ANOVA dua arah
     
     C. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
     
     D. Lakukan uji Tukey
     
     E. Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
     
   Berikut adalah contoh daftar package dan fungsi yang dapat digunakan (dapat pula menggunakan contoh lainnya)
   
     - Packages: readr, ggplot2, multcompView, dplyr
     - Function: aov, TukeyHSD, qplot, group_by, summarise, multcompLetters4

   - A. Buatlah plot sederhana untuk visualisasi data
   
        Run semua library yang diperlukan
        
        ```
        install.packages("multcompView")
        install.packages("ggplot2")
        install.packages("readr")
        install.packages("dplyr")
        library(readr)
        library(ggplot2)
        library(multcompView)
        library(dplyr)
        ```

        Selanjutnya membaca file GTL.csv dari documents
        
        ```
        GTL <- read_csv("GTL.csv")
        head(GTL)
        ```
        
        <img width="905" alt="image" src="https://user-images.githubusercontent.com/86004023/170869335-af14ad73-5ced-415e-b45c-973564029064.png">

        Lakukan observasi pada data
        
        ```
        str(GTL)
        ```
        
        <img width="729" alt="image" src="https://user-images.githubusercontent.com/86004023/170869363-1aeb4d72-a0f3-4024-a8ef-c4783fd6127b.png">   
        
        </br>

        Selanjutnya lakukan viasualisasi menggunakan simple plot yaitu sebagai berikut
        
        ```
        qplot(x = Temp, y = Light, geom = "point", data = GTL) +
          facet_grid(.~Glass, labeller = label_both)
        ```
        
        <img width="997" alt="Screen Shot 2022-05-29 at 19 45 00" src="https://user-images.githubusercontent.com/86004023/170869408-fbadc3d5-a4d9-47eb-8598-5099ad19058f.png">
        
        </br>
        
   - B. Lakukan uji ANOVA dua arah
        
        Langkah pertama adalah membuat variabel as factor sebagai ANOVA
        
        ```
        GTL$Glass <- as.factor(GTL$Glass)
        GTL$Temp_Factor <- as.factor(GTL$Temp)
        str(GTL)
        ```
        
        <img width="701" alt="image" src="https://user-images.githubusercontent.com/86004023/170869474-c9773f49-7f83-4589-887c-4092a289147e.png">
        
        </br>

        Selanjutnya melakukan analisis of variance (aov) yaitu sebagai berikut 
        
        ```
        anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
        summary(anova)
        ```
        
        <img width="570" alt="image" src="https://user-images.githubusercontent.com/86004023/170869510-97c2a8c9-d482-40a9-a0de-4e452c611aad.png">  
        
   - C. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
        
        Menggunakan `group_by` lalu melakukan `summarise` sesuai mean dan standar deviasi yang berlaku sehingga scriptnya adalah sebagai berikut
        
          ```
          data_summary <- group_by(GTL, Glass, Temp) %>%
            summarise(mean=mean(Light), sd=sd(Light)) %>%
            arrange(desc(mean))
          print(data_summary)
          ```
        <img width="817" alt="image" src="https://user-images.githubusercontent.com/86004023/170869545-0426a637-abd9-4201-8ea7-197c9fe16d66.png">
        
        </br>
        
     - D. Lakukan uji Tukey
          Menggunakan fungsi `TukeyHSD` sebagai berikut
          
          ```
          tukey <- TukeyHSD(anova)
          print(tukey)
          ```
          
          <img width="387" alt="image" src="https://user-images.githubusercontent.com/86004023/170869613-cdba8e46-27d2-4c13-b542-0b1130b3310b.png">

     - E. Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey

          Awalnya yaitu membuat compact letter display sebagai berikut
          
          ```
          tukey.cld <- multcompLetters4(anova, tukey)
          print(tukey.cld)
          ```
          
          <img width="583" alt="image" src="https://user-images.githubusercontent.com/86004023/170869674-ada599a1-38f7-4218-bb79-e541974fb218.png">
          
          </br>
          
          Tambahkan compact letter display tersebut ke tabel dengan means(rata-rata) dan sd

          ```
          cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
          data_summary$Tukey <- cld$Letters
          print(data_summary)
          ```
          
          <img width="640" alt="image" src="https://user-images.githubusercontent.com/86004023/170869690-a2fac8aa-9f59-4a44-9c8f-b983e1cb07dd.png">
          
