import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/sign_up/form_signup.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import '../../constants.dart';
import '../sign_in/form_signin.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 10.sp,),
              Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.center,
                    width: double.infinity.w,
                    // color: Colors.amber,
                    child: Image.asset(
                      'assets/images/SignUp.png',
                      fit: BoxFit.cover,
                    )),
              ),

              Expanded(
                flex: 4,
                child: Container(
                  // height: 500.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0.sp),
                          topLeft: Radius.circular(130.sp))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 20.sp, bottom: 20.sp, left: 20.sp, right: 20.sp),
                    child: SingleChildScrollView(
                      child: Column(
                          children: [
                            SizedBox(height: 30.sp,),
                            Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, color: TextColor, fontSize: 22.sp,),),
                            SizedBox(height: 70.sp,),
                            FormSignUp(),
                            SizedBox(height: 20.sp,),


                          ]
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
