import 'package:flutter/material.dart';

import '../../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_button_social.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Welcome,',
                  fontSize: 30,
                ),
                CustomText(
                  text: 'Sign Up',
                  fontSize: 18,
                  color: primaryColor,
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomText(
              text: 'Sign in to Continue',
              fontSize: 14,
              color: Colors.grey,
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              text: 'Email',
              hintext: 'doula@gmail.com',
              onSave: (value) {},
              validator: (value) {},
            ),
            SizedBox(height: 40),
            CustomTextFormField(
              text: 'Password',
              hintext: '*************',
              onSave: (value) {},
              validator: (value) {},
            ),
            SizedBox(height: 20),
            CustomText(
              text: 'Forget Password?',
              fontSize: 14,
              alignment: Alignment.topRight,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'SIGN IN',
              onPressed: () {},
            ),
            SizedBox(height: 20),
            CustomText(
              text: '--OR--',
              alignment: Alignment.center,
            ),
            SizedBox(height: 20),
            CustomButtonSocial(
              text: 'Sign In With Facebook',
              imageName: 'assets/facebook.png',
              onPressed: () {},
            ),
            SizedBox(height: 20),
            CustomButtonSocial(
              text: 'Sign In With Google',
              imageName: 'assets/google.png',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
