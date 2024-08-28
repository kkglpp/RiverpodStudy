import 'package:flutter_riverpod/flutter_riverpod.dart';

final autodisposeModifierProvider = FutureProvider.autoDispose <List<int>>((ref) async {
  await Future.delayed(Duration(seconds: 1));

  return [1,2,3,4,5,6,7,8,9,10];

});