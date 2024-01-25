import 'package:flutter/material.dart';

class FLDTextFormField extends StatelessWidget {

  final Key? key;
  final String hintText;
  final IconData prefixIcon;
  final bool? obscureText;
  final GlobalKey<FormFieldState>? formFieldKey;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Widget? suffix;

  FLDTextFormField({
    this.key,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
    this.formFieldKey,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.focusNode,
    this.suffix,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
