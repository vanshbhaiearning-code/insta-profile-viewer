![Instagram Profile Viewer](https://img.shields.io/badge/Flutter-2.0+-blue)
![Dart](https://img.shields.io/badge/Dart-3.0+-green)
![License](https://img.shields.io/badge/License-MIT-orange)

# 📱 Instagram Profile Viewer

A beautiful Flutter application for viewing Instagram profile analytics and statistics with stunning animations and UI design.

## ✨ Features

- 🎯 **Beautiful UI** - Modern design with smooth animations
- 🔍 **Profile Search** - Search for Instagram profiles
- 📊 **Profile Analytics** - View follower count, posts, and following
- ✅ **Verified Badge** - Display verified status
- 🖼️ **Profile Gallery** - View recent posts/pictures
- ⚡ **Smooth Animations** - Loading and transition animations
- 📱 **Responsive Design** - Works on all screen sizes

## 📸 Screenshots

### Home Screen
- Search bar for profile lookup
- Suggested profiles quick access
- Clean and modern interface

### Loading Screen
- Animated spinner with Instagram icon
- Connection status indicator
- Smooth dot animation

### Profile Screen
- Profile picture with verified badge
- Stats display (Posts, Followers, Following)
- Bio section
- Recent posts grid
- Profile link button

## 🚀 Getting Started

### Prerequisites
- Flutter 3.0+
- Dart 3.0+
- Android SDK (for Android builds)

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/vanshbhaiearning-code/insta-profile-viewer.git
cd insta-profile-viewer
```

2. **Get dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
flutter run
```

### Build APK

```bash
flutter build apk --release
```

The APK will be generated at `build/app/outputs/flutter-apk/app-release.apk`

## 📦 Dependencies

- **google_fonts** - Beautiful typography
- **shimmer** - Shimmer effect widget
- **lottie** - Animation library

## 🎨 Design Features

- **Color Scheme**: Blue gradient primary color (#1F88E8)
- **Typography**: Poppins font family
- **Animations**: 
  - Rotating circle animation on loading screen
  - Animated dots indicator
  - Smooth page transitions

## 📝 Mock Data

The app includes mock data for testing with the following profiles:
- `cristiano` - Football player profile
- `instagram` - Official Instagram account
- `virat.kohli` - Cricketer profile

You can modify the mock data in `lib/services/mock_data_service.dart`

## 🔧 Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   └── profile_model.dart   # Instagram profile data model
├── screens/
│   ├── home_screen.dart     # Home/search screen
│   ├── profile_screen.dart  # Profile details screen
│   └── loading_screen.dart  # Loading animation screen
└── services/
    └── mock_data_service.dart # Mock data provider
```

## 🌐 Future Enhancements

- [ ] Real Instagram API integration
- [ ] User authentication
- [ ] Follower growth analytics
- [ ] Post engagement metrics
- [ ] Export analytics as PDF
- [ ] Dark mode support

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Author

Created by **vanshbhaiearning-code**

## 🤝 Contributing

Feel free to fork this repository and submit pull requests for any improvements!

## 📞 Support

If you have any questions or issues, please open an issue on GitHub.

---

**Made with ❤️ using Flutter**
