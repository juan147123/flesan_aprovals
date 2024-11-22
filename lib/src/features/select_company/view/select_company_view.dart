import 'package:data_repository/data_repository.dart';
import 'package:flesan_approvals/src/localization/localizations.dart';
import 'package:flesan_approvals/src/ui_commons/loading_widget.dart';
import 'package:flesan_approvals/src/ui_commons/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../welcome/view/welcome_page.dart';
import '../../welcome_company/view/welcome_company_page.dart';
import '../cubit/cubit.dart';
import '../widgets/company_widget.dart';

class SelectCompanyView extends StatefulWidget {
  const SelectCompanyView({super.key});

  @override
  State<StatefulWidget> createState() => _SelectCompanyViewState();
}

class _SelectCompanyViewState extends State<SelectCompanyView> {
  @override
  void initState() {
    super.initState();
    context.read<SelectCompanyCubit>().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectCompanyCubit, SelectCompanyState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        if (state.status == SelectCompanyStatus.loading) {
          return const LoadingWidget();
        }

        final companies = state.companies ?? [];
        return _SelectCompanyContent(companies: companies);
      },
    );
  }
}

class _SelectCompanyContent extends StatelessWidget {
  const _SelectCompanyContent({
    required this.companies,
  });

  final List<Company> companies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 25, right: 25, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Flecha a la izquierda
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(
                        WelcomePage.routeName,
                      );
                    },
                  ),
                  // Espacio entre la flecha y el logo
                  const Spacer(),
                ],
              ),
              // Logo de la empresa centrado
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/select_company/select_company_logo.png',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),
          Text(
            AppLocalizations.of(context)?.select_company ?? '',
            style: FlesanTextStyles.subTitle,
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 37),
              itemBuilder: (context, index) {
                var company = companies[index];
                return CompanyWidget(
                  logoUrl: company.logoUrl,
                  name: company.name,
                  imageUrl: company.thumbnailUrl,
                  onTap: () => Navigator.of(context).pushReplacementNamed(
                    WelcomeCompanyPage.routeName,
                    arguments: company,
                  ),
                );
              },
              itemCount: companies.length,
            ),
          ),
        ],
      ),
    );
  }
}
