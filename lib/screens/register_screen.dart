import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red.shade50,

      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: Colors.red,
      ),

      body: Center(
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(30),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                color: Colors.black12,
              )
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const Text(
                "Create Account",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 25),

              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),

                  onPressed: () {},

                  child: const Text("Register"),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}