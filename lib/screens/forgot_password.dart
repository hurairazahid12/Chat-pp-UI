import 'package:flutter/material.dart';
import 'package:flutter_firebase/custom_widgets/custom_button.dart';
import 'package:flutter_firebase/screens/otp.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '../constants.dart';

class ForgotPass extends StatefulWidget {
  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  late String _email;
  final _key = GlobalKey<FormState>();
  final _ForgotPassBtn = "Continue";

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
                      'assets/images/forgot_pass.png',
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
                              "Forgot\nPassword?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: TextColor,
                                fontSize: 32.sp,
                              ),
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                            Text(
                              "Don't worry it happens. Please enter the email address associated with your account and we will send an email with instructions to reset your password. ",
                              style: TextStyle(color: TextColor),
                            ),
                            SizedBox(
                              height: 60.sp,
                            ),
                            Form(
                              key: _key,
                                child: buildEmailTextFormField()),
                            SizedBox(
                              height: 50.sp,
                            ),
                            CustomButton(_ForgotPassBtn,()=>{
                              if(_key.currentState!.validate()){
                                _key.currentState!.save(),
                                print("Successfully form data validate and save!"),
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) =>Otp())),
                              } else {
                                print("Some thing is wrong!\nCheck your custom button or form! \nData validation and save failed!"),
                              }
                            }),
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

  TextFormField buildEmailTextFormField() {
    return TextFormField(
                            onSaved: (value){
                              setState(() {
                                _email=value!;
                              });
                            },

                            validator: (value){
                              if(value==null || value=="" || value.isEmpty) {
                                return "Please Enter Your Email";
                              }else if( !RegExp("^[a-zA-Z0-9.!#%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*").hasMatch(value)){
                                return "Provide Your Correct Email";
                              }
                            },

                            style: TextStyle(color: Colors.white70),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.email_outlined, color: Colors.white,),
                                hintStyle: TextStyle(color: Colors.white70),
                                label: Text("Email", style: TextStyle(color: Colors.white),),
                                focusColor: Colors.white,
                                hoverColor: Colors.amber,
                                hintText: "Enter your Email" ,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  borderSide:BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  borderSide:BorderSide(color: Colors.orange),
                                )
                            ),
                          );
  }

}
