import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shoezy_app/utils/assets.dart';
import 'package:shoezy_app/utils/colors.dart';
import 'package:shoezy_app/view/auth/login/login.dart';
import 'package:shoezy_app/view/widgets/auth_field.dart';
import 'package:shoezy_app/view/widgets/authbutton.dart';
import 'package:shoezy_app/view/widgets/googlebutton.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
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
                  'Getting Started.!',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  'Create an Account to Continue ',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: nameController,
                  hintText: 'Name',
                  prefixIcon: Bootstrap.person,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 20),
                AuthButton(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    text: "Sign Up"),
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
                  onTap: () {},
                  title: 'Continue with Phone',
                  icon: AppAssets.kPhone,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an Account? ',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'SIGN IN',
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
                                      builder: (context) => LoginPage()));
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
