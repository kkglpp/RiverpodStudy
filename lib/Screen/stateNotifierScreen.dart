import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_test/common/baseLayout.dart';
import 'package:riverpods_test/riverpods_ctrl/state_notifier.dart';

class StateNotifierScreen extends ConsumerWidget {
  const StateNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ItemListProvider);

    return BaseLayout(
      title: 'StateNotifierProvider',
      body: ListView(
          children: state
              .map(
                (e) => CheckboxListTile(
                  title: Text(e.name),
                  value: e.hasBought,
                  onChanged: (value) {
                    ref.read(ItemListProvider.notifier).toggleHasBought(
                          name: e.name,
                        );
                  },
                ),
              )
              .toList()),
    );
  }
}
