import 'package:flesan_approvals/src/ui_commons/ui_commons.dart';
import 'package:flutter/material.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({
    super.key,
    required this.logoUrl,
    required this.name,
    required this.imageUrl,
    required this.onTap,
  });

  final String logoUrl;
  final String name;
  final String imageUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: InkWell(
        onTap: onTap,
        child: ContainerWidget(
          height: 140,
          padding:
              const EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                fit: FlexFit.loose,
                flex: 136,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Center(
                        child: SizedBox(
                          width: 90,
                          height: 40,
                          child: Image.network(
                            logoUrl,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      name,
                      style: FlesanTextStyles.textStyle23,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 28),
              Flexible(
                fit: FlexFit.tight,
                flex: 169,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
