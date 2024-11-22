import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/document_detail/cubit/document_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui_commons/ui_commons.dart';
import 'document_detail_view.dart';

class DocumentDetailPage extends StatelessWidget {
  static const String routeName = '/document';

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => const DocumentDetailPage());

  const DocumentDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final document = ModalRoute.of(context)!.settings.arguments as Document;

    return BlocProvider(
      create: (context) => DocumentDetailCubit(
        document: document,
        authRepository: context.read<DataRepository>().authRepository,
        documentsRepository: context.read<DataRepository>().documentsRepository,
      ),
      child: const Scaffold(
        backgroundColor: FlesanColors.aliceBlue,
        body: DocumentDetailView(),
      ),
    );
  }
}
