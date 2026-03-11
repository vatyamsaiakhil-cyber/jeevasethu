import 'package:flutter/material.dart';

class RequestScreen extends StatelessWidget {

  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Emergency Request"),
        backgroundColor: Colors.red,
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),

        child: Column(

          children: [

            TextField(
              controller: descriptionController,
              maxLines: 4,

              decoration: InputDecoration(
                labelText: "Describe Emergency",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),

                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Emergency request sent"),
                    ),
                  );

                },

                child: const Text(
                  "Send Request",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}