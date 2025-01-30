import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kart_ti_flutter/config/dependencies.dart';
import 'package:kart_ti_flutter/ui/home/home_page.dart';
import 'package:kart_ti_flutter/ui/home/home_viewmodel.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Logger.root.level = Level.ALL;

  runApp(
    MultiProvider(
      providers: providersRemote,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(
        viewModel: HomeViewModel(
          corridaRepository: context.read(),
          temporadaRepository: context.read(),
          temporadaPilotoRepository: context.read(),
          corridasGetHomeUseCase: context.read(),
        ),
      ),
    );
  }
}
