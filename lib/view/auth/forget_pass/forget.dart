import 'package:flutter/material.dart';
import 'package:shoezy_app/utils/colors.dart';
import 'package:shoezy_app/view/auth/forget_pass/newpass.dart';
import 'package:shoezy_app/view/widgets/auth_field.dart';
import 'package:shoezy_app/view/widgets/authbutton.dart';

class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController mailController = TextEditingController();

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
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Select which contact details should we use to Reset Your Password ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
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
                SizedBox(height: 40),
                AuthButton(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {}
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewPass()));
                  },
                  text: "Sent Link",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
