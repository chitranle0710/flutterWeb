import 'package:flutter/material.dart';
import 'package:web_uit_base/config/app_icon.dart';
import 'package:web_uit_base/config/app_text.dart';
import 'package:web_uit_base/service/app_color.dart';

import '../about/about_page.dart';
import '../contact/contact_page.dart';
import '../store/store_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Variable to hold the currently displayed page
  Widget _currentPage = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Icon at the start
            SizedBox(
              width: 150,
              child: AppIcon.iconShopping.widget(), // Your shopping icon widget
            ),
            const Spacer(),
            // Menu in the center
            Row(
              children: [
                _buildMenuItem('Home', () {
                  setState(() {
                    _currentPage =
                        const HomePage(); // Replace with your HomePage widget
                  });
                }),
                const SizedBox(width: 20),
                _buildMenuItem('About', () {
                  setState(() {
                    _currentPage =
                        const AboutPage(); // Assuming AboutPage is already defined
                  });
                }),
                const SizedBox(width: 20),
                _buildMenuItem('Stores', () {
                  setState(() {
                    _currentPage =
                        const StoresPage(); // Assuming StoresPage is already defined
                  });
                }),
                const SizedBox(width: 20),
                _buildMenuItem('Contact', () {
                  setState(() {
                    _currentPage =
                        const ContactPage(); // Assuming ContactPage is already defined
                  });
                }),
              ],
            ),
            // Spacer to ensure the menu is centered
            const Spacer(),
            // Logic icon at the end (e.g., Profile, Cart, or any action icon)
            IconButton(
              icon: const Icon(Icons.account_circle, size: 30),
              onPressed: () {
                // Define action for profile icon
              },
            ),
            const SizedBox(width: 10),
            AppText.primary(
              'Login',
              color: AppColors.black,
              fontWeight: FontWeightType.regular,
            )
          ],
        ),
      ),
      // Replace body with the current page
      body: _currentPage,
    );
  }

  Widget _buildMenuItem(String title, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: AppText.primary(
        title,
        color: AppColors.black,
        fontWeight: FontWeightType.regular,
      ),
    );
  }
}

// Dummy Home Page Widget (Replace with your actual HomePage)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is the Home Page', style: TextStyle(fontSize: 24)),
    );
  }
}
