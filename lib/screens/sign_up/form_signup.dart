import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import '../../constants.dart';

class FormSignUp extends StatefulWidget {
  @override
  _FormSignUpState createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {

  var _obscureTextRP=true;
  var _obscureTextP=true;
  final _key=GlobalKey<FormState>();
  late String _email;

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
          buildLoginGestureDetector(),
        ],
      ),
    );
  }


  GestureDetector buildLoginGestureDetector() {
    return GestureDetector(
      onTap: () {
        if(_key.currentState!.validate()){
          _key.currentState!.save();
          print(_email + "    " + _pass.text);
        } else {
          print("soooooooooooooommmmmeeeee thing is wrong");
        }
      },
      child: Container(
        height: 55.sp,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp),
            )),
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
