import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:internship_task1/SignIn.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:internship_task1/my_form.dart';

import 'my_button.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/imagev2.jpg'),
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
                    'Register',
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
                  'Email',
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
                child: MyForm(labelText: 'Eg. example@gmail.com', textInputType: TextInputType.emailAddress,icon: Icon(null),)
              ),
            ),
            const SizedBox(
              height: 10,
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
            Row(
              children: [
                SizedBox(
                    width: 100,
                    child: CountryCodePicker(initialSelection: 'EG',)),
                SizedBox(
                  width: 270,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,right: 0),
                    child:MyForm(labelText: 'Eg. 812345678', textInputType: TextInputType.phone, icon: Icon(null),)
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Password',
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
                child:
                MyForm(icon: Icon(Icons.remove_red_eye), labelText: 'Password', textInputType: TextInputType.visiblePassword,visible: true,)

              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyButton(text: 'Sign In',
                backGroundColor: Colors.blue,
                height: 40.0,
                width: 350.0,
                onPress: (){}),
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
                  'Has any account?',
                ),
                TextButton(
                    onPressed: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                    child: Text(
                      'Sign in here',
                    ) )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'By regestering your account, you are agree to our',
                ),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      'terms and conditions',
                    ) )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
