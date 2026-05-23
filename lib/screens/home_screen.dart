import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_profile_viewer/services/mock_data_service.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  late List<String> suggestedProfiles;

  @override
  void initState() {
    super.initState();
    suggestedProfiles = MockDataService.getSuggestedProfiles();
  }

  void _searchProfile() {
    if (_searchController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a username')),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            ProfileScreen(username: _searchController.text.trim()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Instagram Icon
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF1F88E8),
                        Color(0xFF5B3EC2),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                const SizedBox(height: 30),

                // Title
                Text(
                  'PREMIUM VIEWER',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'ANALYTICS',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 30),

                // Search Input
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _searchController,
                    onSubmitted: (_) => _searchProfile(),
                    decoration: InputDecoration(
                      hintText: 'ENTER INSTAGRAM PROFILE',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFF1F88E8),
                        size: 24,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 20,
                      ),
                    ),
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // Analyze Button
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: _searchProfile,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1F88E8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                    ),
                    child: Text(
                      'ANALYZE PROFILE',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),

                // Suggested Profiles
                Text(
                  'Try These Profiles:',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 15),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: suggestedProfiles.map((profile) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProfileScreen(username: profile),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1F88E8).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0xFF1F88E8).withOpacity(0.3),
                          ),
                        ),
                        child: Text(
                          '@$profile',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1F88E8),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
