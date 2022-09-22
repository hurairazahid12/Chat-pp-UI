import 'package:flutter/material.dart';
import 'package:flutter_firebase/custom_widgets/custom_button.dart';
import 'package:flutter_firebase/models/chat.dart';
import '../chatapp/mainscreen/chats/chat_main_screen.dart';
import 'package:flutter_firebase/screens/forgot_password.dart';
import 'package:flutter_firebase/screens/sign_in/sign_in.dart';
import 'package:flutter_firebase/screens/sign_up/sign_up.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '../../constants.dart';
import '../../constants.dart';
class FormSignIn extends StatefulWidget {
  @override
  _FormSignInState createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {

  var _obscureText=true;
  final _key=GlobalKey<FormState>();
  late String _email;
  late String _pass;
  final _signInBtn =" SignIn";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: [
          buildEmailTextFormField(),
          SizedBox(height: 20.sp,),
          buildPasswordTextFormField(),
          SizedBox(height: 15.sp,),
          buildForgotPasswordGestureDetector(context),
          SizedBox(height: 30.sp,),
          CustomButton(_signInBtn, ()=> {
          if(_key.currentState!.validate()){
              _key.currentState!.save(),
                  print("Successfully form data validate and save!"),
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>ChatMainScreen())),
          } else {
            print("Some thing is wrong!\nCheck your custom button or form! \nData validation and save failed! "),
          }
          }),
        ],
      ),
    );
  }







  //*********************************************************************************************************************





  GestureDetector buildForgotPasswordGestureDetector(BuildContext context) {
    return GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>ForgotPass()));
          },
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              "Forgot Password",
              style: TextStyle(color: TextOrange, decoration: TextDecoration.underline),
            ),
          ),
        );
  }






  TextFormField buildPasswordTextFormField() {
    return TextFormField(
      onSaved: (value){
        setState(() {
          _pass=value!;
        });
      },

      validator: (value){
        if(value==null || value=="" || value.isEmpty) {
          return "Please Enter Your Password!";
        }else if( value.length < 8 ){
          return "Kindly Provide minimum 8 characters!";
        }
      },
      obscureText: _obscureText,
      style: TextStyle(color: Colors.white70),
      cursorColor: TextColor,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: (){
              setState(() {
                _obscureText= !_obscureText;
              });
            },
            child: _obscureText ?  Icon(Icons.visibility_off, color: Colors.white):  Icon(Icons.visibility, color: Colors.orange),),
          hintStyle: TextStyle(color: Colors.white70),
          label: Text("Password", style: TextStyle(color: TextColor),),
          focusColor: Colors.white,
          hintText: "Enter your Password" ,
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
        }else if( !value.contains("@") || !value.contains(".com")){
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
