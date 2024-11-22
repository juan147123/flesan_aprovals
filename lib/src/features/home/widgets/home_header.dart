import 'package:flesan_approvals/src/features/home/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../localization/localizations.dart';
import '../../../ui_commons/dialogs/confirm_dialog.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.iconUrl,
  });

  final String? iconUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 40,
          child: iconUrl == null ? const SizedBox() : Image.network(iconUrl!),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            ConfirmDialog.showConfirmDialog(
              context,
              'logout.json',
              AppLocalizations.of(context)!.logoutTitle,
              AppLocalizations.of(context)!.logoutDescription,
              () {
                context.read<HomeCubit>().logout();
              },
            );
          },
          child: Image.asset('assets/images/home/home_logout.png'),
        ),
      ],
    );
  }
}
