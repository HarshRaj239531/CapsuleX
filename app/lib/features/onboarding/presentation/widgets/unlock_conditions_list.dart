import 'package:flutter/material.dart';
import '../../domain/models/unlock_condition_model.dart';
import 'unlock_condition_tile.dart';

/// List widget laying out all 6 unlock condition tiles.
class UnlockConditionsList extends StatelessWidget {
  final List<UnlockConditionModel> items;

  const UnlockConditionsList({
    super.key,
    this.items = const [],
  });

  @override
  Widget build(BuildContext context) {
    final list = items.isEmpty ? UnlockConditionModel.defaultList : items;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: list.map((item) {
        return UnlockConditionTile(
          item: item,
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${item.title} selected'),
                duration: const Duration(seconds: 1),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
