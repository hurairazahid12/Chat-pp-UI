import 'package:flutter/material.dart';
import 'package:flutter_firebase/custom_widgets/custom_button.dart';
import 'package:flutter_firebase/screens/sign_in/sign_in.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '../constants.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _obscureTextRP = true;
  bool _obscureTextP = true;
  final _ResetPassBtn = "Continue";
  final _key=GlobalKey<FormState>();

  TextEditingController _pass = TextEditingController();
  TextEditingController _repass = TextEditingController();

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
                      'assets/images/reset_pass.png',
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
                              "Create\nnew Password",
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
                              "Your new password must be different from previous used password",style: TextStyle(color: TextColor),
                            ),
                            SizedBox(
                              height: 40.sp,
                            ),
                            Form(
                              key: _key,
                                child: Column(
                                  children: [
                                    buildPassTextFormField(),
                                    SizedBox(
                                      height: 20.sp,
                                    ),
                                    buildRePassTextFormField(),
                                  ],
                                )),

                            SizedBox(
                              height: 50.sp,
                            ),
                            CustomButton(
                                _ResetPassBtn,
                                () => {
                                if(_key.currentState!.validate()){
                                _key.currentState!.save(),
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignIn()),
                                  ),
                                  print("Successfully form data validate and save!"),
                                } else
                                  {
                                    print(
                                        "Some thing is wrong!\nCheck your custom button or form! \nData validation and save failed!"),
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

  TextFormField buildRePassTextFormField() {
    return TextFormField(
      controller: _repass,
      onSaved: (value) {
        setState(() {
          _repass = value as TextEditingController;
        });
      },
      validator: (value) {
        if (value == null || value == "" || value.isEmpty) {
          return "Please Enter Your Password!";
        } else if (value.length < 8) {
          return "Kindly Provide minimum 8 characters!";
        } else if (value != _pass.text) {
          return "Password didn't match!";
        }
      },
      obscureText: _obscureTextRP,
      style: TextStyle(color: Colors.white70),
      cursorColor: TextColor,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureTextRP = !_obscureTextRP;
              });
            },
            child: _obscureTextRP
                ? Icon(Icons.visibility_off, color: Colors.white)
                : Icon(Icons.visibility, color: Colors.orange),
          ),
          hintStyle: TextStyle(color: Colors.white70),
          label: Text(
            "Re-Password",
            style: TextStyle(color: TextColor),
          ),
          focusColor: Colors.white,
          hintText: "Enter your password again",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.sp),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.sp),
            borderSide: BorderSide(color: Colors.orange),
          )),
    );
  }

  TextFormField buildPassTextFormField() {
    return TextFormField(
      controller: _pass,
      onSaved: (value) {
        setState(() {
          _pass = value as TextEditingController;
        });
      },
      validator: (value) {
        if (value == null || value == "" || value.isEmpty) {
          return "Please Enter Your Password!";
        } else if (value.length < 8) {
          return "Kindly Provide minimum 8 characters!";
        }
      },
      obscureText: _obscureTextP,
      style: TextStyle(color: Colors.white70),
      cursorColor: TextColor,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureTextP = !_obscureTextP;
              });
            },
            child: _obscureTextP
                ? Icon(Icons.visibility_off, color: Colors.white)
                : Icon(Icons.visibility, color: Colors.orange),
          ),
          hintStyle: TextStyle(color: Colors.white70),
          label: Text(
            "Password",
            style: TextStyle(color: TextColor),
          ),
          focusColor: Colors.white,
          hintText: "Enter your Password",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.sp),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.sp),
            borderSide: BorderSide(color: Colors.orange),
          )),
    );
  }
}
