import 'package:flutter/material.dart';
import 'request_screen.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("JeevaSethu"),
        backgroundColor: Colors.red,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Emergency Assistance",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20),
              ),

              icon: const Icon(Icons.warning),
              label: const Text(
                "Request Help",
                style: TextStyle(fontSize: 20),
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RequestScreen()),
                );
              },
            )

          ],
        ),
      ),
    );
  }
}