import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldWidget extends StatefulWidget {
  final String title;
  final String hint;
  final TextEditingController textEditingController;

  const TextFieldWidget(
      {Key? key,
      required this.title,
      required this.hint,
      required this.textEditingController})
      : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: TextFormField(
            controller: widget.textEditingController,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: widget.hint,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12))),
          ),
        ),
      ],
    );
  }
}
