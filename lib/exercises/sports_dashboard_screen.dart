import 'package:flutter/material.dart';
import 'package:fluuter_test/exercises/fitness_plans/FitnessPlansScreen.dart';

class SportEducation extends StatelessWidget {
  const SportEducation({super.key});

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
        title: Text("SportiFy", style: TextStyle(color: Color(0xFFE16112))),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Color(0xFFE16112)),
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
              Text(
                'welcome back Ezz Aldeen',
                style: TextStyle(color: Color(0xFFE16112), fontSize: 20),
              ),
              SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SportEducation(),
                    ),
                  );
                },
                child: Image.asset('assets/images/sportedu.jpeg'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Activity Tracking',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFE16112),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'plan : SportEducation ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              _buildActivityCardWithNavigation(
                context,
                icon: Icons.directions_run,
                title: 'Swimming',
                progress: 0.3,
                subtitle: '60%',
                color: const Color(0xFF62A5FF),
              ),
              _buildActivityCardWithNavigation(
                context,
                icon: Icons.directions_walk,
                title: 'Football',
                progress: 0.15,
                subtitle: '20%',
                color: const Color(0xFFFF3131),
              ),
              _buildActivityCardWithNavigation(
                context,
                icon: Icons.fitness_center,
                title: 'Taekwondo',
                progress: 0.64,
                subtitle: '80%',
                color: const Color(0xFF70CDA1),
              ),
              _buildActivityCardWithNavigation(
                context,
                icon: Icons.local_fire_department,
                title: 'Kickboxing',
                progress: 0.64,
                subtitle: '80%',
                color: Color(0xFFFF9553),
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
            MaterialPageRoute(builder: (context) => const FitnessPlansScreen()),
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
          MaterialPageRoute(builder: (context) => const FitnessPlansScreen()),
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
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color),
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
              ],
            ),
            SizedBox(height: 10),
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
