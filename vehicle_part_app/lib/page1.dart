import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        elevation: 3,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "AUTONEXUS",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Image.asset(
              'assets/imgs3.png',
             
              width: 300,
              height: 400,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Experience the ultimate car companion with AutoNexus! Simply scan your car part or upload an image of it, and our app will help you easily find the exact auto part you need. Whether you're replacing a damaged part or searching for specific components, AutoNexus makes finding and purchasing auto parts quick and hassle-free.",
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  label: const Text('Scan'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('Insert'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
