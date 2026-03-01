import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.btnText,
    required this.txtColor, 
    required this.onpressed,
  });

  final Color bgColor;
  final String btnText;
  final Color txtColor;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 58,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        //color: bgColor,
        onPressed: () {},
        child: Text(btnText, style: TextStyle(color: txtColor)),
      ),
    );
  }
}
