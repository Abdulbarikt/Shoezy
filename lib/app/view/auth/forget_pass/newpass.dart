import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shoezy_app/app/utils/colors.dart';
import 'package:shoezy_app/app/view/widgets/auth_field.dart';
import 'package:shoezy_app/app/view/widgets/authbutton.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nPassController = TextEditingController();
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
                  controller: passController,
                  hintText: 'New Password',
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
                CustomTextField(
                  controller: nPassController,
                  hintText: 'Confirm Password',
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
                  text: "Continue",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
