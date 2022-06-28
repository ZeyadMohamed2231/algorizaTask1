import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          Image.asset('assets/images/image.jpg'),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                  'Welcome to Fashion Daily',
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

        ],
      ),
    );
  }
}
