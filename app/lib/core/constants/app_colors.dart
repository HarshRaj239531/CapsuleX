import 'package:flutter/material.dart';

/// Centralized color palette for CapsuleX application.
/// Designed for a premium dark neon glassmorphism vibe.
abstract class AppColors {
  // Backgrounds
  static const Color background = Color(0xFF000000);
  static const Color cardBackground = Color(0xFF0F0C1E);
  
  // Primary Purples & Accents
  static const Color primaryPurple = Color(0xFF6D28D9);
  static const Color primaryPurpleLight = Color(0xFF7C3AED);
  static const Color primaryPurpleGlow = Color(0xFF8B5CF6);
  static const Color subtitlePurple = Color(0xFFA78BFA);
  
  // Typography Colors
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFF94A3B8);
  static const Color textMuted = Color(0xFF64748B);

  // Indicators & Control States
  static const Color dotActive = Color(0xFF8B5CF6);
  static const Color dotInactive = Color(0xFF2E2B44);
  
  // Decorative Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFF7C3AED),
      Color(0xFF6D28D9),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const RadialGradient heroGlowGradient = RadialGradient(
    colors: [
      Color(0x558B5CF6),
      Color(0x226D28D9),
      Color(0x0007050E),
    ],
    radius: 0.85,
  );
}
