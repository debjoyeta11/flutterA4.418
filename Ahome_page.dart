import 'package:flutter/material.dart';
import 'Alogin_page.dart';
import 'Aauth_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),

      appBar: AppBar(
        title: const Text(
          'My Homepage',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF263238),
        foregroundColor: Colors.white,
        elevation: 0,

        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 25),

            // Welcome Message
            Text(
              'Hello, ${AuthData.name}!',
              style: const TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color(0xFF263238),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Make today meaningful and create your own success.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 35),

            // First Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(23),

              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF00897B),
                    Color(0xFF80CBC4),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal.withOpacity(0.25),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.lightbulb_outline,
                        size: 48,
                        color: Colors.white,
                      ),

                      Icon(
                        Icons.auto_awesome,
                        size: 35,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    'Grow Through What You Go Through',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Small steps every day lead to big achievements!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'KEEP GROWING  →',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 22),

            // Second Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(23),

              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFFF7043),
                    Color(0xFFFFAB91),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange.withOpacity(0.22),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.rocket_launch_rounded,
                        size: 48,
                        color: Colors.white,
                      ),

                      Icon(
                        Icons.favorite_rounded,
                        size: 35,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    'Your Future Is Created Today',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Stay positive, work hard, and make it happen!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'NEVER STOP DREAMING  →',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Logout Button
            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                    (route) => false,
                  );
                },

                icon: const Icon(Icons.logout),

                label: const Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF263238),
                  foregroundColor: Colors.white,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 2),
          ],
        ),
      ),
    );
  }
}
