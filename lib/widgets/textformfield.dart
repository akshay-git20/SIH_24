// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final Icon pIcon;
  final String? Function(String?) validator;
  final TextInputType tType;
  final bool obscureText;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
    required this.pIcon,
    required this.validator,
    required this.tType,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: GoogleFonts.inter(
        fontSize: 18.0,
        color: const Color(0xFF151624),
      ),
      maxLines: 1,
      keyboardType: tType,
      cursorColor: const Color(0xFF151624),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF151624).withOpacity(0.5),
        ),
        fillColor: controller.text.isNotEmpty
            ? Colors.transparent
            : const Color.fromRGBO(248, 247, 251, 1),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: controller.text.isEmpty
                ? Colors.transparent
                : const Color.fromRGBO(44, 185, 176, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(
            color: Color.fromRGBO(44, 185, 176, 1),
          ),
        ),
        prefixIcon: pIcon,
        suffix: Container(
          alignment: Alignment.center,
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: const Color.fromRGBO(44, 185, 176, 1),
          ),
          child: controller.text.isEmpty
              ? const Center()
              : const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 13,
                ),
        ),
      ),
      validator: validator,
    );
  }
}

class CustomTextFormFieldEditProfile extends StatelessWidget {
  final TextEditingController controller;
  final Icon pIcon;
  final String Function(String?)? validator;
  final TextInputType tType;
  final bool obscureText;
  final String labletext;
  const CustomTextFormFieldEditProfile({
    Key? key,
    required this.controller,
    required this.pIcon,
    this.validator,
    required this.tType,
    required this.obscureText,
    required this.labletext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: tType,
      validator: validator,
      style: TextStyle(color: Theme.of(context).primaryColorLight),
      cursorColor: Theme.of(context).primaryColorLight,
      autofocus: true,
      decoration: InputDecoration(
        labelText: labletext,
        icon: pIcon,
      ),
    );
  }
}
