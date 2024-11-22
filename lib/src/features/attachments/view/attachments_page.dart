import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/attachments/cubit/attachments_cubit.dart';
import 'package:flesan_approvals/src/features/attachments/view/attachments_view.dart';
import 'package:flesan_approvals/src/ui_commons/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AttachmentsPage extends StatelessWidget {
  static const String routeName = '/attachments';

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => const AttachmentsPage());

  const AttachmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final document = ModalRoute.of(context)!.settings.arguments as Document;

    return BlocProvider(
      create: (context) => AttachmentsCubit(
        authRepository: context.read<DataRepository>().authRepository,
        documentsRepository: context.read<DataRepository>().documentsRepository,
        document: document,
      ),
      child: const Scaffold(
        backgroundColor: FlesanColors.aliceBlue,
        body: AttachmentsView(),
      ),
    );
  }
}
