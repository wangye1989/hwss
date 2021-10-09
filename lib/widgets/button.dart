import 'package:flutter/material.dart';

class HonPrimaryButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const HonPrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero)),
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).primaryColor),
        elevation: MaterialStateProperty.all(0),
        padding: MaterialStateProperty.all(
            const EdgeInsets.fromLTRB(16, 0, 16, 0)),
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, height: 1),
      ),
      onPressed: onPressed,
    );
  }
}

class HonSecondButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const HonSecondButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero)),
        elevation: MaterialStateProperty.all(0),
        padding: MaterialStateProperty.all(
            const EdgeInsets.fromLTRB(16, 0, 16, 0)),
        side: MaterialStateProperty.all(BorderSide(
            color: Theme.of(context).primaryColor, width: 1)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          height: 1,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
