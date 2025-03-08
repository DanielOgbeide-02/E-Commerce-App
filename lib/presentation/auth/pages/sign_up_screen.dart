import 'package:ecommerce_app/common/widgets/appbar/auth_appbar.dart';
import 'package:ecommerce_app/core/configs/Theme/app_colors.dart';
import 'package:ecommerce_app/core/configs/assets/app_vectors.dart';
import 'package:ecommerce_app/presentation/auth/pages/sign_in_screen.dart';
import 'package:ecommerce_app/presentation/home/pages/home/home_page.dart';
import 'package:ecommerce_app/presentation/navigation/pages/navigation_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common/widgets/button/basic_app_button.dart';
import '../../../common/widgets/input_field/input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static String id = 'SignUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
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
                // Sign up header section
                const AuthAppbar(
                    title: 'Sign Up'
                ),
                // sign up body
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 73,
                      ),
                      InputField(obscureText: false, hintText: 'e.g John', inputType: TextInputType.text, controller: nameController,isEmail: false, isName: true,label: 'Name',),
                  SizedBox(
                    height: 10,
                  ),
                      InputField(obscureText: false, hintText: 'e.g john@gmail.com', inputType: TextInputType.emailAddress, controller: emailController,isEmail: true, isName: false,label: 'Email',),
                      SizedBox(
                        height: 10,
                      ),
                      InputField(obscureText: false,  hintText: 'Password', controller: passwordController,isEmail: false, isName: false, isPassword: true,label: 'Password',),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          IconButton(onPressed: () {
                            // Navigator.pushNamed(context, SignInScreen.id);
                            Navigator.pushNamed(context, NavigationScreen.id);
                          }, icon: Icon(
                              Icons.arrow_forward,
                            color: AppColors.primary,
                          ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                  Buttons(
                    buttonColor: AppColors.primary,
                    width: double.infinity,
                    buttonText: 'SIGN UP',
                    buttonTextColor: Colors.white,
                    isPressed: false,
                    onPressed: (){

                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                    ],
                  ),
                ),

                Column(
                  children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Or sign up with social account',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height:10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1), // Shadow color
                              spreadRadius: 2, // How much the shadow spreads
                              blurRadius: 5, // Softening the shadow
                              offset: Offset(0, 2), // x and y offset of the shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(25)
                        ),
                        height: 60,
                        width: 90,
                        child: Center(
                          child: SvgPicture.asset(
                              height: 25,
                              width: 25,
                              AppVectors.googleLogo
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1), // Shadow color
                                spreadRadius: 2, // How much the shadow spreads
                                blurRadius: 5, // Softening the shadow
                                offset: Offset(0, 2), // x and y offset of the shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(25)
                        ),
                        height: 65,
                        width: 90,
                        child: Center(
                          child: SvgPicture.asset(
                              height: 25,
                              width: 25,
                              AppVectors.facebookLogo
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                                  ],
                                )
              ],
            ),
          ),
        )
    );
  }
}










