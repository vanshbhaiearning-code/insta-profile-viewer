import 'package:insta_profile_viewer/models/profile_model.dart';

class MockDataService {
  static final Map<String, InstagramProfile> _mockProfiles = {
    'cristiano': InstagramProfile(
      username: 'cristiano',
      profilePicUrl:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400',
      posts: 3250,
      followers: 615000000,
      following: 500,
      bio: '⚽ Football • Family oriented • 🙏 #CR7',
      isVerified: true,
      recentPostsUrls: [
        'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=300',
        'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=300',
        'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=300',
        'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=300',
      ],
    ),
    'instagram': InstagramProfile(
      username: 'instagram',
      profilePicUrl:
          'https://images.unsplash.com/photo-1611339555312-e607c04352fa?w=400',
      posts: 15000,
      followers: 600000000,
      following: 100,
      bio: 'Bringing you closer to the people and things you love.',
      isVerified: true,
      recentPostsUrls: [
        'https://images.unsplash.com/photo-1499887142886-fd1caa13d019?w=300',
        'https://images.unsplash.com/photo-1499887142886-fd1caa13d019?w=300',
        'https://images.unsplash.com/photo-1499887142886-fd1caa13d019?w=300',
        'https://images.unsplash.com/photo-1499887142886-fd1caa13d019?w=300',
      ],
    ),
    'virat.kohli': InstagramProfile(
      username: 'virat.kohli',
      profilePicUrl:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=400',
      posts: 4500,
      followers: 250000000,
      following: 800,
      bio: '🏏 | 🇮🇳 | Cricketer',
      isVerified: true,
      recentPostsUrls: [
        'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=300',
        'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=300',
        'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=300',
        'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=300',
      ],
    ),
  };

  static Future<InstagramProfile?> getProfile(String username) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 3));

    final profile = _mockProfiles[username.toLowerCase()];
    if (profile != null) {
      return profile;
    }

    // Return a random profile if not found
    return _mockProfiles.values.first;
  }

  static List<String> getSuggestedProfiles() {
    return _mockProfiles.keys.toList();
  }
}
