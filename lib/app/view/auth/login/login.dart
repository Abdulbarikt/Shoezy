import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shoezy_app/app/utils/assets.dart';
import 'package:shoezy_app/app/utils/colors.dart';
import 'package:shoezy_app/app/view/auth/forget_pass/forget.dart';
import 'package:shoezy_app/app/view/auth/phone/get_otp.dart';
import 'package:shoezy_app/app/view/auth/signup/signup.dart';
import 'package:shoezy_app/app/view/home/mainpage.dart';
import 'package:shoezy_app/app/view/widgets/auth_field.dart';
import 'package:shoezy_app/app/view/widgets/authbutton.dart';
import 'package:shoezy_app/app/view/widgets/googlebutton.dart';

import '../../home/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/shoezybk.png',
                    height: 200,
                    width: 200,
                  ),
                ),
                Text(
                  'Let’s Sign In.!',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  'Login to Your Account to Continue  ',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: mailController,
                  hintText: 'Email',
                  prefixIcon: Icons.mail_outline,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                CustomTextField(
                  controller: passController,
                  hintText: 'Password',
                  prefixIcon: Bootstrap.file_lock2,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Forget()));
                      },
                      child: Text(
                        'Forget Password ?',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                AuthButton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainPage()));
                      // if (_formKey.currentState!.validate()) {}
                    },
                    text: "Sign In"),
                SizedBox(
                  height: 20,
                ),
                GoogleButton(
                  onTap: () {},
                  title: 'Continue with Google',
                  icon: AppAssets.kGoogle,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                GoogleButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OtpPage()));
                  },
                  title: 'Continue With Phone',
                  icon: AppAssets.kPhone,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Don’t have an Account? ',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'SIGN UP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()));
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
