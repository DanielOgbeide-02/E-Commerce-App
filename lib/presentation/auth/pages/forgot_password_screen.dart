import 'package:ecommerce_app/common/widgets/appbar/auth_appbar.dart';
import 'package:ecommerce_app/core/configs/Theme/app_colors.dart';
import 'package:ecommerce_app/core/configs/assets/app_vectors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common/widgets/button/basic_app_button.dart';
import '../../../common/widgets/input_field/input_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  static String id = 'ForgotPasswordScreen';

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: Colors.grey.shade100,
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AuthAppbar(
                    title: 'Forgot Password'
                ),
                //sign up body
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 73,
                      ),
                      Text(
                        'Please, enter your email address. You will receive a link to create a new password via email.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InputField(obscureText: false, hintText: 'e.g john@gmail.com', inputType: TextInputType.emailAddress, controller: emailController,isEmail: true, isName: false,label: 'Email',),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Buttons(
                        buttonColor: AppColors.primary,
                        width: double.infinity,
                        buttonText: 'SEND',
                        buttonTextColor: Colors.white,
                        isPressed: false,
                        onPressed: (){

                        },
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}










