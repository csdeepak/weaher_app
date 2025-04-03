# Weather App

A Flutter application that fetches and displays real-time weather data based on user input for city names.

## Features
- Fetches real-time weather data using OpenWeather API.
- Displays city name, temperature, and weather icon.
- Provides error handling for invalid city inputs.
- Simple and visually appealing UI.

## Technologies Used
- Flutter
- Dart
- OpenWeather API
- HTTP Requests

## Installation

1. **Clone the repository**
   ```sh
   git clone https://github.com/csdeepak/weaher_app.git
   ```
2. **Navigate to the project directory**
   ```sh
   cd weaher_app
   ```
3. **Get dependencies**
   ```sh
   flutter pub get
   ```
4. **Run the app**
   ```sh
   flutter run
   ```

## Project Structure
```
weaher_app/
│── lib/
│   ├── main.dart               # Main entry point of the application [View Code](https://github.com/csdeepak/weaher_app/blob/main/lib/main.dart)
│   ├── controllers/
│   │   ├── weather_controller.dart   # Handles API requests and data processing [View Code](https://github.com/csdeepak/weaher_app/blob/main/lib/controllers/weather_controller.dart)
│   ├── models/
│   │   ├── weather_model.dart   # Defines the weather data model [View Code](https://github.com/csdeepak/weaher_app/blob/main/lib/models/weather_model.dart)
│   ├── views/
│   │   ├── weather_view.dart   # UI for displaying weather data [View Code](https://github.com/csdeepak/weaher_app/blob/main/lib/views/weather_view.dart)
│── pubspec.yaml               # Project dependencies and metadata
│── README.md                  # Project documentation
```

## How It Works
1. The user enters a city name in the input field.
2. Clicking **Get Weather** fetches data from OpenWeather API.
3. The weather details (temperature, city name, and icon) are displayed.
4. If an invalid city name is entered, an error message is shown.

## API Usage
This app uses the OpenWeather API to fetch weather details. Make sure to replace `API_KEY` in `weather_controller.dart` with your valid API key.

## Contact
Developed by **CS Deepak**  
GitHub: [csdeepak](https://github.com/csdeepak)

---
Enjoy using the Weather App! ☀️🌧️🌪️
