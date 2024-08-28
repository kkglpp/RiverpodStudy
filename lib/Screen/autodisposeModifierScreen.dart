import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_test/common/baseLayout.dart';
import 'package:riverpods_test/riverpods_ctrl/autodisposeProvider.dart';
import 'package:riverpods_test/riverpods_ctrl/familyModifierProvider.dart';

class AutoDisposeScreen extends ConsumerWidget {
  const AutoDisposeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(autodisposeModifierProvider);
    return BaseLayout(
      title: "AutoDisposeScreen",
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
