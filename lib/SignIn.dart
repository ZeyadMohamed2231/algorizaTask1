import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                      'Sign in',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: const [
                      Text('Help',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.help,
                      color: Colors.blue,),


                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 45,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: "Eg. 812345678",
                    prefixIcon: Icon(
                        Icons.email
                    ),
                    border: OutlineInputBorder(

                    ),

                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              height: 40.0,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                onPressed: (){ },
                child: Text(
                  'Sign In ',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Or',
              style: TextStyle(
                color: Colors.black45
              ) ,
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 350,
              child: Container(
                color: Colors.blueAccent,
                height: 40.0,
                child: SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      'Register here',
                    ) )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Use the application according to policy rules. Any\n kinds of violations will be subject to sanctions',
            style: TextStyle(
              color: Colors.black45
            ),)




          ],
        ),
      ),
    );
  }
}
