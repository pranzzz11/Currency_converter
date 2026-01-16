import 'package:flutter/material.dart';

class MaterialHomepage extends StatelessWidget {
  const MaterialHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 77, 76, 76),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 250, 245, 248),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(
                  color: Color.fromARGB(255, 22, 21, 22),
                ),
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 248, 104, 226),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Color.fromARGB(255, 245, 115, 206),
                  filled: true,
                  fillColor: Color.fromARGB(244, 242, 200, 240),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                debugPrint('Button clicked');
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 94, 206),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              
              ),
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
