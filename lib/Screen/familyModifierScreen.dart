import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_test/common/baseLayout.dart';
import 'package:riverpods_test/riverpods_ctrl/familyModifierProvider.dart';

class FamilyModifierScreen extends ConsumerWidget {
  const FamilyModifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(FamilyModifierProvider(3));
    return BaseLayout(
      title: "FamilyModifierScreen",
      body: Center(
        child: state.when(
          data: (data) {
            return Text(data.toString());
          },
            error: (error, stackTrace) {
              return Text(error.toString());
            }, 
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, 
        ),
      ),
    );
  }
}
