import 'package:flutter/material.dart';
import '../WelcomeScreen/gym_details_screen.dart'; // Ensure this file exists

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2120),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C2120),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/sportify.jpeg'),
        ),
        title: const Text(
          "SportiFy",
          style: TextStyle(color: Color(0xFFE16112)),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.orangeAccent),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'welcome back Ezz Aldeen',
                style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GymDetailsScreen(),
                    ),
                  );
                },
                child: Image.asset('assets/images/welose.jpeg'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Activity Tracking',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'plan : weight lose',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildActivityCardWithNavigation(
                context,
                icon: Icons.directions_run,
                title: 'Run',
                progress: 0.3,
                color: Colors.orangeAccent,
              ),
              _buildActivityCardWithNavigation(
                context,
                icon: Icons.directions_walk,
                title: 'Step',
                progress: 0.15,
                subtitle: '1200/8000 steps',
                color: Colors.redAccent,
              ),
              _buildActivityCardWithNavigation(
                context,
                icon: Icons.fitness_center,
                title: 'Gym',
                progress: 0.5,
                subtitle: '2/4 hours',
                color: Colors.blueAccent,
              ),
              _buildActivityCardWithNavigation(
                context,
                icon: Icons.local_fire_department,
                title: 'Calories',
                progress: 0.64,
                subtitle: '3200/5000 burned',
                color: Colors.greenAccent,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE16112),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GymDetailsScreen()),
          );
        },
        child: const Icon(Icons.fitness_center, color: Colors.white),
      ),
    );
  }

  Widget _buildActivityCardWithNavigation(
    BuildContext context, {
    required IconData icon,
    required String title,
    required double progress,
    String? subtitle,
    required Color color,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GymDetailsScreen()),
        );
      },
      child: ActivityCard(
        icon: icon,
        title: title,
        progress: progress,
        subtitle: subtitle,
        color: color,
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final double progress;
  final String? subtitle;
  final Color color;

  const ActivityCard({
    required this.icon,
    required this.title,
    required this.progress,
    this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            LinearProgressIndicator(
              value: progress,
              color: color,
              backgroundColor: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
