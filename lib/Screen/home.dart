import 'package:flutter/material.dart';
import 'package:riverpods_test/Screen/autodisposeModifierScreen.dart';
import 'package:riverpods_test/Screen/familyModifierScreen.dart';
import 'package:riverpods_test/Screen/futureproviderScreen.dart';
import 'package:riverpods_test/Screen/stateNOtifierScreen.dart';
import 'package:riverpods_test/Screen/stateproviderScreen.dart';
import 'package:riverpods_test/Screen/streamProviderScreen.dart';
import 'package:riverpods_test/common/baseLayout.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: "RiverPods 기본_home_",
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => StateProviderScreen(),
              ));
            },
            child: Text("StateProviderScreen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => StateNotifierScreen(),
              ));
            },
            child: Text("StateNotifierScreen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => FutureProviderScreen(),
              ));
            },
            child: Text("FutureProviderScreen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => StreamProviderScreen(),
              ));
            },
            child: Text("StreamProviderScreen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => FamilyModifierScreen(),
              ));
            },
            child: Text("FamilyModifierScreen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => AutoDisposeScreen(),
              ));
            },
            child: Text("AutoDisposeScreen"),
          ),
        ],
      ),
    );
  }
}
