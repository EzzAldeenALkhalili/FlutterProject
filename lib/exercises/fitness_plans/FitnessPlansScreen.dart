import 'package:flutter/material.dart';

class FitnessPlansScreen extends StatelessWidget {
  const FitnessPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2120),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C2120),
        elevation: 0,
        title: Row(
          children: const [
            Icon(Icons.fitness_center, color: Color(0xFFE16112)),
            SizedBox(width: 8),
            Text(
              "SportiFy",
              style: TextStyle(
                color: Color(0xFFE16112),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Color(0xFFE16112)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Fitness Plans",
              style: TextStyle(
                color: Color(0xFFE16112),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),

            Image.asset(
              'assets/images/plans.jpeg',
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Color(0xFFE16112),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "plan : weight lose",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 24),

            buildPlanButton("Weight lose", Icons.monitor_weight),
            const SizedBox(height: 12),
            buildPlanButton("Bodybuilding", Icons.fitness_center),
            const SizedBox(height: 12),
            buildPlanButton("Sport education", Icons.school),
            const SizedBox(height: 12),
            buildPlanButton("General Exercise", Icons.directions_run),
          ],
        ),
      ),
    );
  }

  Widget buildPlanButton(String title, IconData icon) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black87),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
