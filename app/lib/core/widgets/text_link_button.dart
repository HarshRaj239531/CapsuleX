import 'package:flutter/material.dart';
import '../constants/app_text_styles.dart';

/// Reusable text link action button (e.g. "Log In").
class TextLinkButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const TextLinkButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        title,
        style: AppTextStyles.textLinkButton,
      ),
    );
  }
}
