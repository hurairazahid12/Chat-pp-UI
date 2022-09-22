import'package:flutter/material.dart';
import 'package:flutter_firebase/custom_widgets/custom_button.dart';
import 'package:flutter_firebase/screens/reset_password.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '../constants.dart';
class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  late String _email;
  final _key = GlobalKey<FormState>();
  final _OtpBtn = "Continue";

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
              SizedBox(
                height: 10.sp,
              ),
              Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.center,
                    width: double.infinity.w,
                    // color: Colors.amber,
                    child: Image.asset(
                      'assets/images/otp.png',
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
                          topRight: Radius.circular(130.sp),
                          topLeft: Radius.circular(0.sp))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 20.sp, bottom: 20.sp, left: 20.sp, right: 20.sp),
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.sp,
                            ),
                            Text(
                              "Enter OTP",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: TextColor,
                                fontSize: 32.sp,
                              ),
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                            Text("A 4 digit code has been sent to your email", style: TextStyle(color: TextColor),
                            ),
                            SizedBox(
                              height: 70.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 55.h,
                                  width: 55.w,
                                  decoration: BoxDecoration(
                                    color: TextColor,
                                    borderRadius: BorderRadius.circular(15.sp),
                                    border: Border.all(color: Colors.orange,width: 2.w),
                                  ),),
                                Container(
                                  height: 55.h,
                                  width: 55.w,
                                  decoration: BoxDecoration(
                                    color: TextColor,
                                    borderRadius: BorderRadius.circular(15.sp),
                                    border: Border.all(color: Colors.orange,width: 2.w),
                                  ),),
                                Container(
                                  height: 55.h,
                                  width: 55.w,
                                  decoration: BoxDecoration(
                                    color: TextColor,
                                    borderRadius: BorderRadius.circular(15.sp),
                                    border: Border.all(color: Colors.orange,width: 2.w),
                                  ),),
                                Container(
                                  height: 55.h,
                                  width: 55.w,
                                  decoration: BoxDecoration(
                                    color: TextColor,
                                    borderRadius: BorderRadius.circular(15.sp),
                                    border: Border.all(color: Colors.orange,width: 2.w),
                                  ),),
                              ],
                            ),
                            // buildEmailTextFormField(),
                            SizedBox(
                              height: 50.sp,
                            ),
                            Center(child: Text("Do'nt receive the OTP?", style: TextStyle(color: TextColor),)),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Center(child: Text("Resend OTP", style: TextStyle(color: TextOrange, decoration: TextDecoration.underline),)),
                            SizedBox(
                              height: 50.sp,
                            ),
                            CustomButton(_OtpBtn,()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()))}),
                          ]),
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
