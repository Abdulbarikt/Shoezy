import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoezy_app/app/utils/colors.dart';
import 'package:shoezy_app/app/view/auth/phone/otp.dart';
import 'package:shoezy_app/app/view/widgets/auth_field.dart';
import 'package:shoezy_app/app/view/widgets/authbutton.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
                    'Select which contact details should we use to Sign Up ',
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
                  hintText: 'Phone Number',
                  prefixIcon: CupertinoIcons.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if (!RegExp(r'^\+?\d{10,15}$').hasMatch(value)) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                AuthButton(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {}
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PinputExample()));
                  },
                  text: "Get OTP",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
