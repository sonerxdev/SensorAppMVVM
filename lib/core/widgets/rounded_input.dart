import 'package:flutter/material.dart';
import 'package:uzel_bilisim_task/core/widgets/constants.dart';
import 'package:uzel_bilisim_task/core/widgets/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
    final String? Function(String? data)? validator;
  const RoundedInputField({
    Key? key,
    this.hintText,
    this.icon = Icons.person,
    required this.onChanged, required this.controller, this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: validator,
        controller: controller,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
