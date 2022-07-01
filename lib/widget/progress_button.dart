import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

class SendButton extends StatefulWidget {
  @override
  _SendButtonState createState() => _SendButtonState();
}

class _SendButtonState extends State<SendButton> {
  ButtonState stateOnlyText = ButtonState.idle;
  ButtonState stateTextWithIcon = ButtonState.idle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ProgressButton.icon(iconedButtons: {
        ButtonState.idle: IconedButton(
            text: 'Send',
            icon: Icon(Icons.send, color: Colors.white),
            color: Colors.deepOrange),
        ButtonState.loading:
            IconedButton(text: 'Loading', color: Colors.deepPurple.shade700),
        ButtonState.fail: IconedButton(
            text: 'Failed',
            icon: Icon(Icons.cancel, color: Colors.white),
            color: Colors.red.shade300),
        ButtonState.success: IconedButton(
            text: 'Success',
            icon: Icon(
              Icons.check_circle,
              color: Colors.white,
            ),
            color: Colors.green.shade400)
      }, onPressed: onPressedIconWithText, state: stateTextWithIcon),
    );
  }

  void onPressedIconWithText() {
    switch (stateTextWithIcon) {
      case ButtonState.idle:
        stateTextWithIcon = ButtonState.loading;
        Future.delayed(
          Duration(seconds: 1),
          () {
            setState(
              () {
                stateTextWithIcon = Random.secure().nextBool()
                    ? ButtonState.success
                    : ButtonState.fail;
              },
            );
          },
        );

        break;
      case ButtonState.loading:
        break;
      case ButtonState.success:
        stateTextWithIcon = ButtonState.idle;
        break;
      case ButtonState.fail:
        stateTextWithIcon = ButtonState.idle;
        break;
    }
    setState(
      () {
        stateTextWithIcon = stateTextWithIcon;
      },
    );
  }
}
