# mobile_app_dev_course_project
Mobile Application Development final project


# Mobil Uygulama Geliştirme Dersi Projesi

Bu proje, 2024 Bahar dönemindeki Mobil Uygulama Geliştirme dersi için bir proje olarak geliştirilmiştir.

## Genel Bakış

Proje, Flutter framework'ü kullanılarak bir mobil uygulama oluşturmayı amaçlamaktadır. Uygulama, bir REST API'sinden JSON formatında alınan kategori listesini göstermektedir. Her kategori alt kategorilere sahiptir ve bir kategoriye dokunulduğunda detay ekranı açılır.

## Özellikler

- Çapraz platform mobil uygulama geliştirmek için Flutter framework'ü kullanılmıştır.
- Verilerin bir REST API'sinden asenkron programlama kullanılarak alınması sağlanmıştır.
- Durum yönetimi için Provider paketi kullanılmıştır.
- Ekranlar arası animasyonlu geçişler sağlanmıştır.
- Kategoriler ve detayları ListView ve Hero animasyonu kullanılarak gösterilmiştir.
- Temiz ve açıklamalı kod yapılandırması sağlanmıştır.

## Gereksinimler

- Flutter SDK
- Android Studio / Visual Studio Code (Flutter eklentisi ile)
- Test için sanal cihaz veya fiziksel cihaz

## Kullanım

1. Repository'yi klonlayın:

git clone https://github.com/dogukanatm/mobile_app_dev_course_project.git

2. Proje dizinine gidin:

cd mobile_app_dev_course_project

3. Bağımlılıkları yükleyin:

flutter pub get

4. Uygulamayı çalıştırın:

flutter run

## Proje Yapısı

- `lib/models`: Uygulamada kullanılan veri modellerini içerir.
- `lib/providers`: Durum yönetimi için Provider sınıfını içerir.
- `lib/screens`: Uygulamanın ana ekranları bulunur.
- `lib/services`: REST API'sinden veri almak için ApiService sınıfını içerir.
- `pubspec.yaml`: Proje bağımlılıklarını listeler.

## Katkıda Bulunanlar

- [Üniversite Adı](Erciyes Üniversitesi )
- [Bölüm Adı](Bilgisayar Mühendisliği )
- [Ders Adı](Mobile Application Development )
- [Adım](https://github.com/your-dogukanatm)
- [Öğretim Görevlisi Adı](: https://bm.erciyes.edu.tr/fehim)-



# Mobile Application Development Course Project

This project has been developed as a project for the Mobile Application Development course in the Spring term of 2024.

## Overview

The project aims to create a mobile application using the Flutter framework. The application displays a list of categories obtained from a REST API in JSON format. Each category has subcategories, and tapping on a category opens a detail screen.

## Features

- Flutter framework is used to develop a cross-platform mobile application.
- Data is fetched asynchronously from a REST API using asynchronous programming.
- Provider package is used for state management.
- Animated transitions between screens are implemented.
- Categories and their details are shown using ListView and Hero animation.
- Clean and commented code structure is provided.

## Requirements

- Flutter SDK
- Android Studio / Visual Studio Code with Flutter extension
- Virtual or physical device for testing

## Usage

1. Clone the repository:

git clone https://github.com/dogukanatm/mobile_app_dev_course_project.git

2. Navigate to the project directory:

cd mobile_app_dev_course_project

3. Install dependencies:

flutter pub get

4. Run the application:

flutter run 

## Project Structure

- `lib/models`: Contains the data models used in the application.
- `lib/providers`: Contains the Provider class for state management.
- `lib/screens`: Contains the main screens of the application.
- `lib/services`: Contains the ApiService class for fetching data from the REST API.
- `pubspec.yaml`: Lists the project dependencies.

## Contributors

- **University:** Erciyes University
- **Department:** Computer Engineering
- **Course:** Mobile Application Development
- **Project Author:** [https://github.com/your-dogukanatm]
- **Instructor:** [Fehim KÖYLÜ]https://[bm.erciyes.edu.tr/fehim]







