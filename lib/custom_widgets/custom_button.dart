import'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
class CustomButton extends StatelessWidget {
  late String _butttonTitle;
  late VoidCallback _onPress;

  CustomButton(@required this._butttonTitle, @required this._onPress);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onPress,
      child: Container(
        height: 55.sp,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Center(
            child: Text(_butttonTitle, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.sp),),
        ),
      ),
    );
  }
}
