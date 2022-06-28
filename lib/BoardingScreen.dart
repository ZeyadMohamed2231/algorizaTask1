import 'package:flutter/material.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xD0E1D5AD)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),

            ),
            onPressed: () {
            print('Skip clicked');
          },
            child: const Text(
            'Skip',
            style: TextStyle(
                color: Colors.black
            ),
          ),
          ),
        ),
      ]
    ),


      body: PageView(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset('assets/images/logo.JPG'),
                Image.asset('assets/images/photov2.png'),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Get Food delivery to your\n        doorstep asap',
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    'We have young and professional delivery\n team that will bring your food as soon as\n               possible to your doorstep',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 300,

                  height: 40.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    onPressed: (){ },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                    ),
                    TextButton(
                        onPressed: (){ },

                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.teal,
                          ),
                        ) )
                  ],
                )
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Image.asset('assets/images/logo.JPG'),
                Image.asset('assets/images/photo.png'),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Buy Any Food from your\n    favorite restaurant',
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    '       We are constantly adding your favourite\n restaurant throughout the territory and around\n                  your area carefully selected',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 300,

                  height: 40.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    onPressed: (){ },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                    ),
                    TextButton(
                        onPressed: (){ },

                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.teal,
                          ),
                        ) )
                  ],
                )
              ],
            ),
          ),
        ],
      )



    );
  }
}
