import 'package:flutter/material.dart';
import 'page1.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AutoNexusScreen(),
    );
  }
}

class AutoNexusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 290,
            child: Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/imgs5.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, size: 8, color: Colors.yellow),
                    SizedBox(width: 5),
                    Icon(Icons.circle, size: 8, color: Colors.grey),
                    SizedBox(width: 5),
                    Icon(Icons.circle, size: 8, color: Colors.grey),
                  ],
                ),
                SizedBox(height: 20),
             
                const Center(
                  child: Text(
                    'AUTONEXUS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(height: 30),
           
                const Text(
                  'Find the best auto parts for your Vehicle',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),

          Positioned(
            bottom: 50,
            left: MediaQuery.of(context).size.width * 0.30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Get Start',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
