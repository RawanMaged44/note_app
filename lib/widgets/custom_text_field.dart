import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  CustomTextField({required this.hintText,  this.maxLines =1, this.onSaved, this.onChanged});



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator:(value) {
        if (value?.isEmpty ?? true){
          return 'Field is required';
        }else{
          return null;
        }
      } ,
      onSaved: onSaved,
      cursorColor: Color(0xff62FCD7) ,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xff62FCD7)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white)
        ),
        focusedBorder:const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff62FCD7))
        )
      ),
    );
  }
}
