import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'form_signin.dart';
import '../sign_up/sign_up.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import '../../constants.dart';

class SignIn extends StatelessWidget {
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
                      'assets/images/SignIn.png',
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
                      child: Column(children: [
                        SizedBox(height: 10.sp,),
                        Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold, color: TextColor, fontSize: 22.sp,),),
                        SizedBox(
                          height: 50.sp,),
                        Wrap(
                          spacing: 20.sp,
                            children: [
                              Icon(Icons.facebook_outlined, color: Colors.white,size: 35.sp,),
                              Icon(Icons.email_outlined, color: Colors.white,size: 35.sp,),
                              Icon(Icons.open_in_browser_outlined, color: Colors.white,size: 35.sp,),
                              Icon(Icons.admin_panel_settings_outlined, color: Colors.white,size: 35.sp,),
                            ]),
                        SizedBox(height: 40.sp,),
                        FormSignIn(),
                        SizedBox(height: 20.sp,),
                        buildSignUpGestureDetector(context),
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











  //************************************************************************************************************






  GestureDetector buildSignUpGestureDetector(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "New here?  ",
            style: TextStyle(color: TextColor),
          ),
          Text(
            "SignUp",
            style: TextStyle(
                color: TextOrange, decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }






  AppBar buildAppBar() {
    return AppBar(
      // backgroundColor: Colors.cyan,
      elevation: 0.sp,
      backgroundColor: Colors.orange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.sp),
            bottomRight: Radius.circular(30.sp)),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(170.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.sp,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 200.h,
                  width: 280.w,
                  color: Colors.amber,
                  child: Image.asset(
                    'assets/images/login.png',
                    fit: BoxFit.contain,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
