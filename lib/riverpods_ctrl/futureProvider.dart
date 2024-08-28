import 'package:flutter_riverpod/flutter_riverpod.dart';

final multipleFutureProvider = FutureProvider<List<int>>(
  (ref) async {
    await Future.delayed(Duration(seconds: 2));
    // throw Exception("error 발생 연습"); //view에서 에러 발생했을때 어떻게 보이는지 보기위함

    return [1, 2, 3, 4, 5, 6];
  },
);
