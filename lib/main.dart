
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final DataRepository dataRepository = FlesanDataRepository(host: Environment.host);

  runApp(RepositoryProvider<DataRepository>(
    create: (context) => dataRepository,
    child: const App(),
  ));
}
