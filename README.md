# 🌤️ Weather App

A clean Flutter weather application that fetches real-time weather data and dynamically changes its theme and gradient background based on the current weather condition.

---

## 📸 Screenshots

| Searching City | Weather Info |
| :---: | :---: |
| <img src="https://github.com/user-attachments/assets/71cc0e9f-b619-4544-814c-344f7deac2e4" width="250"/> | <img src="https://github.com/user-attachments/assets/731260ad-55af-48cb-95f5-460df49a2b41" width="250"/> |

---

## ✨ Features

* 🔍 **City Search:** Search for current weather conditions for any city worldwide.
* 🎨 **Dynamic Dynamic Theming:** App color scheme and background gradients adapt automatically to the weather condition (e.g., Sunny, Rain, Clear).
* 📊 **Detailed Weather Info:** Displays temperature, min/max temperatures, date/time, weather icon, and condition status.
* ⚡ **Real-time State Management:** Built using BLoC/Cubit for predictable and clean state handling.

---

## 🛠️ Architecture & Tech Stack

* **Framework:** Flutter (Dart)
* **State Management:** `flutter_bloc` (Cubit)
* **Networking:** `dio`
* **API:** [WeatherAPI](https://www.weatherapi.com/)
* **Architecture:** Layered Architecture (Views, Cubits, Services, Models, Utils)

---

## 📁 Project Structure

```text
lib/
├── cubits/          # State management (GetWeatherCubit & WeatherStates)
├── models/          # WeatherModel data class
├── services/        # WeatherService (API integration using Dio)
├── utils/           # Helper classes & Dynamic theme mapping logic
├── views/           # App screens (HomeView, SearchView)
└── widgets/         # Reusable UI widgets (WeatherInfoBody, NoWeatherBody)
