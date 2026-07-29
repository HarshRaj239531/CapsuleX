import 'package:flutter/material.dart';
import '../../domain/models/memory_type_model.dart';
import 'memory_type_card.dart';

/// Grid widget laying out all 6 memory category cards.
class MemoryTypesGrid extends StatelessWidget {
  final List<MemoryTypeModel> items;

  const MemoryTypesGrid({
    super.key,
    this.items = const [],
  });

  @override
  Widget build(BuildContext context) {
    final list = items.isEmpty ? MemoryTypeModel.defaultList : items;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.88,
      ),
      itemBuilder: (context, index) {
        return MemoryTypeCard(item: list[index]);
      },
    );
  }
}
