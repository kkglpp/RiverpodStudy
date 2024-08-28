import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_test/model/item_model.dart';

final ItemListProvider = StateNotifierProvider<ItemListNotifier, List<ItemModel>>((ref) => ItemListNotifier());

class ItemListNotifier extends StateNotifier<List<ItemModel>> {
  ItemListNotifier()
      : super(
          [
            //초기값을 넣는 부분 bloc와 비슷함
            ItemModel(
              name: "시계",
              quantity: 1,
              hasBought: true,
              special: true,
            ),
            ItemModel(
              name: "스마트폰",
              quantity: 1,
              hasBought: true,
              special: false,
            ),
            ItemModel(
              name: "물병",
              quantity: 1,
              hasBought: true,
              special: false,
            ),
            ItemModel(
              name: "반지",
              quantity: 2,
              hasBought: false,
              special: true,
            ),
            ItemModel(
              name: "향수",
              quantity: 4,
              hasBought: false,
              special: false,
            ),
          ],
        );
 //
  void toggleHasBought({required String name}) {
    state = state
        .map((e) => e.name == name
            ? ItemModel(
                name: e.name,
                quantity: e.quantity,
                hasBought: !e.hasBought,
                special: e.special,
              )
            : e)
        .toList();
  }
}
