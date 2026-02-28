import 'package:flutter/material.dart';
import 'package:fooditem/core/utile/text_style.dart';
import 'package:fooditem/core/widget/button.dart';
import 'package:fooditem/core/widget/customer_text_fieled.dart';
import 'package:fooditem/feature/presentation/login/screen/widget/dividerr.dart';
import 'package:fooditem/feature/presentation/login/screen/widget/googleetfacebooketiphone.dart';

import 'package:fooditem/feature/presentation/login/screen/widget/stack_image.dart';

class LoginHome extends StatelessWidget {
  const LoginHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stackimage(),
            SizedBox(height: 3),
            Expanded(
              child: Container(
                width: double.infinity,
                // height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      spreadRadius: 3,
                      blurRadius: 6,
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ],
                  //color: Color(0xffFCFCFC),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  Containerapphome(),
                      /*
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                          color: Color(0xff0F172A),
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                        ),
                      ),
                      SizedBox(height: 5),
                      
                      Text(
                        'Sign in to continue your culinary journey',
                        style: TextStyle(
                          color: Color(0xff64748B),
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      */
                      SizedBox(height: 20),
                      Text('Email', style: TextStylee.textfieled),
                      SizedBox(height: 5),

                      CustomerTextFieled(
                        prefixIcon: Icon(
                          size: 14,
                          Icons.email,
                          color: Color(0xff3B71D8),
                          weight: 16,
                        ),

                        title: 'Entrer your Email',
                      ),
                      SizedBox(height: 20),
                      Text('password', style: TextStylee.textfieled),
                      SizedBox(height: 5),

                      CustomerTextFieled(
                        prefixIcon: Icon(
                          Icons.lock,
                          weight: 16,
                          size: 14,
                          color: Color(0xff3B71D8),
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Color(0xff94A3B8),
                        ),
                        title: 'Entrer your Password',
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      Buttonn(text: 'Login'),
                      SizedBox(height: 10),
                      dividerr(),
                      SizedBox(height: 5),
                      Googleetfacebooketiphone(),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff64748B),
                            ),
                          ),
                          Text(
                            "Sin Up",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff3B71D8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
