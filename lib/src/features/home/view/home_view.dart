import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/splash/view/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../document_detail/view/document_detail_page.dart';
import '../cubit/cubit.dart';
import '../widgets/home_content.dart';
import '../widgets/home_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().fetchData();
    context.read<HomeCubit>().changeStatus(DocumentStatus.pending);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.status == HomeStatus.logout) {
          Navigator.of(context).pushReplacementNamed(SplashPage.routeName);
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            HomeHeader(iconUrl: state.company?.logoUrl),
            const SizedBox(
              height: 33,
            ),
            HomeContent(
              selectedStatus: state.documentStatus,
              documents: state.documents,
              onTap: (document) => Navigator.of(context)
                  .pushNamed(
                    DocumentDetailPage.routeName,
                    arguments: document,
                  )
                  .then(
                    (value) => context
                        .read<HomeCubit>()
                        .reload(),
                  ),
            ),
          ],
        );
      },
    );
  }
}
