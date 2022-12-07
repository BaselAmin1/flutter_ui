import 'package:flutter/material.dart';

Widget DefaultTextFormField({
  context,
  TextEditingController? controller,
  dynamic label,
  IconData? prefixIcon,
  Widget? prefixIconWidget,
  TextInputType? keyboardType,
  Function(String)? onSubmit,
  onChange,
  onTap,
  String? Function(String?)? validation,
  suffixPressed,
  String? hintText,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textAlign: TextAlign.start,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validation,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: label,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        prefixIcon: Icon(
          prefixIcon,
        ),
      ),
    );
