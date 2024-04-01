import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meraih_mobile/configs/app_configs.dart';
import 'package:meraih_mobile/routes/app_router.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:imagekit/imagekit.dart';

void main() {
  final imagekit = ImageKit.getInstance();
  const config = Configuration(
    publicKey: 'public_hIQL2TQ5xmqXV1ZmQGNbLee6oUY=',
    urlEndpoint: 'https://ik.imagekit.io/6squemi6wq',
    authenticationEndpoint: '${AppConfigs.baseUrl}/auth-imagekit',
  );
  imagekit.setConfig(config);
  runApp(const ProviderScope(child: MyApp()));
  FilePicker.platform = FilePicker.platform;
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(),
      routerConfig: goRouter,
    );
  }
}
