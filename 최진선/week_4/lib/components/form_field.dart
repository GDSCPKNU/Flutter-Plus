import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class FormInputField extends StatelessWidget {
  final String text;
  final ValueChanged<String> onChanged;
  const FormInputField({required this.text, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 17),
        ),
        const SizedBox(height: 10),
        TextFormField(
          onChanged: onChanged,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          validator: (value) => value!.isEmpty
            ? "$text를 입력해주세요."
            : null,
          decoration: InputDecoration(
            hintText: text,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 1.5)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.lightBlue, width: 1.5)
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.orange, width: 1.5)
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.lightBlue, width: 1.5)
            ),
          ),
        ),
      ],
    );
  }
}