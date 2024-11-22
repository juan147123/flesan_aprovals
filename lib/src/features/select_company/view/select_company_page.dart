import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/features/select_company/cubit/select_company_cubit.dart';
import 'package:flesan_approvals/src/ui_commons/background/image_background_widget.dart';
import 'package:flesan_approvals/src/ui_commons/ui_commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'select_company_view.dart';

class SelectCompanyPage extends StatelessWidget {
  static const String routeName = '/select_company';

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => const SelectCompanyPage());

  const SelectCompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectCompanyCubit(
        companiesRepository: context.read<DataRepository>().companiesRepository,
      ),
      child: const Scaffold(
        backgroundColor: FlesanColors.brightRed,
        body: ImageBackgroundWidget(
          assetPath:
              'assets/images/select_company/select_company_background.png',
          alpha: 50,
          child: SelectCompanyView(),
        ),
      ),
    );
  }
}
