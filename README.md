# Mini Katalog Uygulaması

## Kısa Açıklama
Bu proje, **Flutter Günlük Eğitim** programı kapsamında geliştirilmiş temel seviye bir mobil e-ticaret vitrin (**Mini Katalog**) uygulamasıdır. Ekstra harici paket kullanılmadan yalnızca Flutter SDK (`material.dart`) ile geliştirilmiştir.

Uygulama şu temel özellikleri içerir:
- **Ana Sayfa (Discover):** Banner görseli, anlık ürün arama/filtreleme ve `GridView.builder` ile kart tabanlı ürün listeleme.
- **JSON Simülasyonu ve Veri Modelleme:** Yerel `assets/data/products.json` dosyasından `fromJson` / `toJson` metotlarıyla veri okuma.
- **Sayfa Geçişleri ve Route Arguments:** `Navigator.pushNamed` ve Named Routes kullanarak ürün detay ve sepet sayfalarına veri aktarımı.
- **Sepet Yönetimi (State Simülasyonu):** Ürün detay sayfasından sepete ekleme, sepetteki ürünleri listeleme, toplam tutar hesaplama, ürün çıkarma ve sipariş simülasyonu.

## Kullanılan Flutter Sürümü
- **Flutter SDK:** `3.24.0` (Dart SDK `>=3.0.0 <4.0.0`)
- **Kullanılan Paketler:** Yalnızca `flutter/material.dart` (ekstra paket kullanılmamıştır).

## Proje Klasör Yapısı
```text
mini_katalog/
├── assets/
│   ├── data/
│   │   └── products.json
│   └── images/
│       ├── banner.png
│       ├── airpods_pro.png
│       ├── airpods_max.png
│       ├── homepod.png
│       ├── homepod_mini.png
│       ├── iphone_15_pro.png
│       ├── macbook_pro.png
│       └── ipad_air.png
├── lib/
│   ├── data/
│   │   └── product_repository.dart
│   ├── models/
│   │   └── product.dart
│   ├── screens/
│   │   ├── discover_screen.dart
│   │   ├── product_detail_screen.dart
│   │   └── cart_screen.dart
│   ├── widgets/
│   │   └── product_card.dart
│   └── main.dart
├── pubspec.yaml
└── README.md
```

## Çalıştırma Adımları
1. Depoyu bilgisayarınıza klonlayın veya proje klasörünü açın:
   ```bash
   git clone <repository-url>
   cd mini_katalog
   ```
2. Bağımlılıkları yükleyin:
   ```bash
   flutter pub get
   ```
3. Bağlı bir Android Emulator veya fiziksel cihaz üzerinde uygulamayı başlatın:
   ```bash
   flutter run
   ```

## Uygulama Ekran Görüntüleri (Screenshots)
> *Not: Uygulamayı çalıştırdıktan sonra aldığınız ekran görüntülerini `screenshots/` klasörüne ekleyerek aşağıda paylaşabilirsiniz.*

| Discover (Ana Sayfa) | Ürün Detay Sayfası | Sepet (Dolu) | Sepet (Boş) |
| :---: | :---: | :---: | :---: |
| ![Discover](screenshots/discover.png) | ![Detail](screenshots/detail.png) | ![Cart Filled](screenshots/cart_filled.png) | ![Cart Empty](screenshots/cart_empty.png) |
