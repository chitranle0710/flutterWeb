import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_uit_base/config/app_text.dart';
import 'package:web_uit_base/service/app_color.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('My Web App'),
            Row(
              children: [
                _buildMenuItem('Home', context),
                const SizedBox(width: 20),
                _buildMenuItem('About', context),
                const SizedBox(width: 20),
                _buildMenuItem('Contact', context),
              ],
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return _buildDesktopLayout();
          } else {
            return _buildMobileLayout();
          }
        },
      ),
    );
  }

  Widget _buildMenuItem(String title, BuildContext context) {
    return TextButton(
      onPressed: () {
        // Add navigation or actions for each menu item
      },
      child: AppText.primary(
        title,
        color: AppColors.black,
        fontWeight: FontWeightType.regular,
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 50),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome to My Web App!',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'This is a responsive web layout built with Flutter.',
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      // Add action here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('Get Started'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-2b6f07e6bc693a7311e5352cf27810e7.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to My Web App!',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'This is a responsive web layout built with Flutter.',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Add action here
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
