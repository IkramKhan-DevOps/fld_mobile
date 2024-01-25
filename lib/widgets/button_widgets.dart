import 'package:flutter/material.dart';

class FLDElevatedButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsets? padding;
  final void Function() onPressed;

  const FLDElevatedButton({
    Key? key,
    required this.title,
    required this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[500],
          foregroundColor:
              foregroundColor ?? Theme.of(context).colorScheme.secondary,
          padding: padding ?? const EdgeInsets.all(18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 18),
            Text(
              " $title",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ));
  }
}
