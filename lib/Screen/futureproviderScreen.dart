import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_test/common/baseLayout.dart';
import 'package:riverpods_test/riverpods_ctrl/futureProvider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(multipleFutureProvider);

    return BaseLayout(
      title: "FutureProviderscreen",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          state.when(
            data: (data) {
              return Text(
                data.toString(),
                textAlign: TextAlign.center,
              );
            }, // 로딩이 끝나고 데이터가 들어왔을때
            error: (error, stackTrace) {
              return Text(error.toString());
            }, // 에러가 발생했을 때
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, // 로딩중에
          )
        ],
      ),
    );
  }
}
