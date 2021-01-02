import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trouver_trade_test/Constants/Constants.dart';

class CustomNumberInputField extends StatelessWidget {
  final String hinttext, initialvalue;
  final Function(String) onchanged;
  final Function(String) onsubmit;
  final Function() onTap;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final bool isPassword, isError, autofocus;

  const CustomNumberInputField(
      {Key key,
      this.hinttext,
      this.onchanged,
      this.onsubmit,
      this.focusNode,
      this.textInputAction,
      this.isPassword,
      this.isError,
      this.onTap,
      this.initialvalue,
      this.autofocus})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(color: Color(0xFF2F2F2)),
      child: TextField(
        autofocus: autofocus ?? false,
        controller: (initialvalue != null)
            ? TextEditingController(text: initialvalue)
            : null,
        onTap: onTap,
        focusNode: focusNode,
        onChanged: onchanged,
        onSubmitted: onsubmit,
        textInputAction: textInputAction,
        obscureText: isPassword ?? false,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
        ],
        maxLength: 10,
        decoration: InputDecoration(
          counter: Offstage(),
          prefix: Text(
            "+91  ",
            style: Constants.regularHeading,
          ),
          labelText: hinttext ?? 'Hint Text..',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        ),
        style: Constants.regularDarkText,
      ),
    );
  }
}
