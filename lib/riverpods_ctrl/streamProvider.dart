import 'package:flutter_riverpod/flutter_riverpod.dart';

final MultipleStreamProvider = StreamProvider <List<int>>((ref) async*{
  for (int i = 0; i<10; i++){
    await Future.delayed(Duration(milliseconds: 500),);

    yield List.generate(5, (index) => index * i);
  }

});