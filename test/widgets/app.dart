import 'package:flutter/material.dart';
import 'package:nations/nations.dart';

class NationsTestApp extends StatelessWidget {
  const NationsTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NationsBuilder(
      builder: (_) => const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Text('Foo');

    return MaterialApp(
      locale: Nations.locale,
      localizationsDelegates: Nations.delegates,
      supportedLocales: Nations.supportedLocales,
      // builder: ,
      home: const _MyWidget(),
    );
  }
}

class _MyWidget extends StatelessWidget {
  const _MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(Directionality.of(context) == TextDirection.rtl ? 'RTL' : 'LTR'),
          Text('date'.tr),
          Text('time'.tr),
          Text('edit'.tr),
          Text('show'.tr),
          Text('delete'.tr),
          Text('no'.tr),
          Text('yes'.tr),
        ],
      ),
    );
  }
}
