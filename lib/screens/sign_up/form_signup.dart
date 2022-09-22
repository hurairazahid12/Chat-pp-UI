import 'package:flutter/material.dart';
import 'package:flutter_firebase/custom_widgets/custom_button.dart';
import 'package:flutter_firebase/screens/forgot_password.dart';
import 'package:flutter_firebase/screens/sign_in/sign_in.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import '../../constants.dart';

class FormSignUp extends StatefulWidget {
  @override
  _FormSignUpState createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {

  bool _obscureTextRP=true;
  bool _obscureTextP=true;
  late String _email;
  final _key=GlobalKey<FormState>();
  final _signUpBtn="SignUp";

  TextEditingController _pass = TextEditingController();
  TextEditingController _repass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: [
          buildEmailTextFormField(),
          SizedBox(height: 20.sp,),
          buildPasswordTextFormField(),
          SizedBox(height: 20.sp,),
          buildRePasswordTextFormField(),
          SizedBox(height: 50.sp,),
          CustomButton(_signUpBtn,()=> {
            if(_key.currentState!.validate()){
              _key.currentState!.save(),
            print("Successfully form data validate and save!"),
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()))
            } else {
            print("Some thing is wrong!\nCheck your custom button or form! \nData validation and save failed!"),
            }
          }),
        ],
      ),
    );
  }


  TextFormField buildRePasswordTextFormField() {
    return TextFormField(
      controller: _repass,
      onSaved: (value){
        setState(() {
          _repass=value as TextEditingController;
        });
      },

      validator: (value){
        if(value==null || value=="" || value.isEmpty) {
          return "Please Enter Your Password!";
        }else if( value.length < 8 ){
          return "Kindly Provide minimum 8 characters!";
        }else if( value != _pass.text ){
          return "Password didn't match!";
        }
      },
      obscureText: _obscureTextRP,
      style: TextStyle(color: Colors.white70),
      cursorColor: TextColor,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: (){
              setState(() {
                _obscureTextRP= !_obscureTextRP;
              });
            },
            child: _obscureTextRP ?  Icon(Icons.visibility_off, color: Colors.white):  Icon(Icons.visibility, color: Colors.orange),),
          hintStyle: TextStyle(color: Colors.white70),
          label: Text("Re-Password", style: TextStyle(color: TextColor),),
          focusColor: Colors.white,
          hintText: "Enter your password again" ,
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


  TextFormField buildPasswordTextFormField() {
    return TextFormField(
      controller: _pass,
      onSaved: (value){
        setState(() {
          _pass=value as TextEditingController;
        });
      },

      validator: (value){
        if(value==null || value=="" || value.isEmpty) {
          return "Please Enter Your Password!";
        }else if( value.length < 8 ){
          return "Kindly Provide minimum 8 characters!";
        }
      },
      obscureText: _obscureTextP,
      style: TextStyle(color: Colors.white70),
      cursorColor: TextColor,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: (){
              setState(() {
                _obscureTextP= !_obscureTextP;
              });
            },
            child: _obscureTextP ?  Icon(Icons.visibility_off, color: Colors.white):  Icon(Icons.visibility, color: Colors.orange),),
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
