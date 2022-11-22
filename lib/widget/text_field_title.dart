import 'package:candle/constant/textStyle.dart';
import 'package:flutter/material.dart';

class TextFieldTitle extends StatelessWidget {
  TextFieldTitle({required this.title, required this.onChange, Key? key})
      : super(key: key);
  String title;
  Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: CustomTextStyle.titleWhiteTextStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width:  300,
          child: TextField(
            maxLines: 1,
            onChanged: (value) {
              onChange(value);
            },
            style: CustomTextStyle.bodyTextStyle,
            decoration: InputDecoration(
              fillColor: Colors.white,
                filled: true,
                contentPadding:
                    const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                labelStyle: CustomTextStyle.bodyTextStyle),
          ),
        )
      ],
    );
  }
}
