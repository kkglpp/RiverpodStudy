import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_test/common/baseLayout.dart';
import 'package:riverpods_test/riverpods_ctrl/streamProvider.dart';

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(MultipleStreamProvider);
    return BaseLayout(
      title: 'StreamProviderScreen',
      body: Center(
        child: 
          state.when(
            data: (data) {
              return Text(data.toString());
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => CircularProgressIndicator(),
          )
        ,
      ),
    );
  }
}
