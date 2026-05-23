class InstagramProfile {
  final String username;
  final String profilePicUrl;
  final int posts;
  final int followers;
  final int following;
  final String bio;
  final bool isVerified;
  final List<String> recentPostsUrls;

  InstagramProfile({
    required this.username,
    required this.profilePicUrl,
    required this.posts,
    required this.followers,
    required this.following,
    required this.bio,
    required this.isVerified,
    required this.recentPostsUrls,
  });

  factory InstagramProfile.fromJson(Map<String, dynamic> json) {
    return InstagramProfile(
      username: json['username'] ?? 'Unknown',
      profilePicUrl: json['profilePicUrl'] ?? '',
      posts: json['posts'] ?? 0,
      followers: json['followers'] ?? 0,
      following: json['following'] ?? 0,
      bio: json['bio'] ?? '',
      isVerified: json['isVerified'] ?? false,
      recentPostsUrls: List<String>.from(json['recentPostsUrls'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'profilePicUrl': profilePicUrl,
      'posts': posts,
      'followers': followers,
      'following': following,
      'bio': bio,
      'isVerified': isVerified,
      'recentPostsUrls': recentPostsUrls,
    };
  }
}