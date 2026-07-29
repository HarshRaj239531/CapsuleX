import 'package:flutter/material.dart';

/// Data model representing a memory category card (Photos, Videos, Audio, etc.)
class MemoryTypeModel {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final Color iconBgColor;

  const MemoryTypeModel({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    required this.iconBgColor,
  });

  static List<MemoryTypeModel> get defaultList => const [
        MemoryTypeModel(
          title: 'Photos',
          subtitle: 'Save your special moments',
          icon: Icons.photo_library_rounded,
          iconColor: Color(0xFFA78BFA),
          iconBgColor: Color(0x228B5CF6),
        ),
        MemoryTypeModel(
          title: 'Videos',
          subtitle: 'Store your favorite videos',
          icon: Icons.play_circle_fill_rounded,
          iconColor: Color(0xFFC084FC),
          iconBgColor: Color(0x22A855F7),
        ),
        MemoryTypeModel(
          title: 'Audio',
          subtitle: 'Record voice notes and memories',
          icon: Icons.mic_rounded,
          iconColor: Color(0xFF34D399),
          iconBgColor: Color(0x2210B981),
        ),
        MemoryTypeModel(
          title: 'Letters',
          subtitle: 'Write letters for your future',
          icon: Icons.article_rounded,
          iconColor: Color(0xFFFBBF24),
          iconBgColor: Color(0x22F59E0B),
        ),
        MemoryTypeModel(
          title: 'Documents',
          subtitle: 'Keep important files safe',
          icon: Icons.insert_drive_file_rounded,
          iconColor: Color(0xFF60A5FA),
          iconBgColor: Color(0x223B82F6),
        ),
        MemoryTypeModel(
          title: 'And More',
          subtitle: 'Anything that matters to you',
          icon: Icons.all_inbox_rounded,
          iconColor: Color(0xFFF472B6),
          iconBgColor: Color(0x22EC4899),
        ),
      ];
}
