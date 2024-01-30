import 'package:bizcard_app/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final String? label;
  final String? hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isRequired;
  final String? validationType;
  final int maxLines;
  final Function(String)? onChanged;
  final TextEditingController controller;
  const InputField({
    super.key, 
    this.label, 
    this.hint,
    required this.controller,
    this.isRequired = false,
    this.validationType,
    this.onChanged,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      style: GoogleFonts.roboto(
        fontSize: 16,
        color: Colors.black
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: prefixIcon!=null 
          ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon!=null 
          ? Icon(suffixIcon) : null,
        errorMaxLines: 2,
        labelText: label,
        hintText: hint,
        alignLabelWithHint: true
      ),
      validator: (val){
        if(validationType=='email'){
          return Validator.validateEmail(val);
        }else if(validationType=='password'){
          return Validator.validatePassword(val);
        }else if(isRequired){
          return Validator.validateNonNull(val, label??'');
        }
        return null;
      },
    );
  }
}