import 'package:flutter/material.dart';

/// Data model representing an unlock condition item (Future Date, Location, Milestone, etc.)
class UnlockConditionModel {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final Color iconBgColor;
  final bool isPro;

  const UnlockConditionModel({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    required this.iconBgColor,
    this.isPro = false,
  });

  static List<UnlockConditionModel> get defaultList => const [
        UnlockConditionModel(
          title: 'Future Date',
          subtitle: 'Unlock on a specific date and time',
          icon: Icons.calendar_month_rounded,
          iconColor: Color(0xFFA78BFA),
          iconBgColor: Color(0x228B5CF6),
        ),
        UnlockConditionModel(
          title: 'Location',
          subtitle: 'Unlock when you reach a specific place',
          icon: Icons.location_on_rounded,
          iconColor: Color(0xFF34D399),
          iconBgColor: Color(0x2210B981),
        ),
        UnlockConditionModel(
          title: 'Milestone',
          subtitle: 'Unlock after achieving a personal milestone',
          icon: Icons.emoji_events_rounded,
          iconColor: Color(0xFFFBBF24),
          iconBgColor: Color(0x22F59E0B),
        ),
        UnlockConditionModel(
          title: 'People Approval',
          subtitle: 'Requires approval from trusted people',
          icon: Icons.group_rounded,
          iconColor: Color(0xFF60A5FA),
          iconBgColor: Color(0x223B82F6),
        ),
        UnlockConditionModel(
          title: 'Password / PIN',
          subtitle: 'Unlock using a password, PIN or secret code',
          icon: Icons.lock_outline_rounded,
          iconColor: Color(0xFFFB7185),
          iconBgColor: Color(0x22F43F5E),
        ),
        UnlockConditionModel(
          title: 'Multiple Conditions',
          subtitle: 'Combine multiple conditions to unlock your capsule',
          icon: Icons.hub_rounded,
          iconColor: Color(0xFFC084FC),
          iconBgColor: Color(0x22A855F7),
          isPro: true,
        ),
      ];
}
