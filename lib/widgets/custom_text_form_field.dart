import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? textInputType;
  final TextStyle? textStyle;
  final Text? label;
  final String? obscuringCharacter;
  final Text? prefix;
  final bool obscureText;

  const CustomTextFormField(
      {Key? key,
      this.textInputType,
      this.textStyle,
      this.label,
      this.obscuringCharacter,
      this.prefix,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType ?? TextInputType.phone,
      style: textStyle ?? Theme.of(context).textTheme.headline6,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: label ?? const Text("Phone Number"),
        prefix: prefix ?? const Text(""),
      ),
    );
  }
}
