import 'package:easysalon_users_app/_shared/intl/generated/l10n.dart';
import 'package:easysalon_users_app/presentation/base/base.dart';
import 'package:easysalon_users_app/presentation/settings/settings_viewmodel.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<SettingsViewModel>(
        viewModel: SettingsViewModel(),
          childMobile:
           Scaffold(
            body: SafeArea(
              top: true,
              right: false,
              left: false,
              bottom: false,
              child: Column(
                children: [
                  Text(S.current.appLanguage),
                  TextButton(
                      onPressed: () {
                        // viewModel.setLocale('vi');
                      },
                      child: Text('Click'))
                ],
              ),
            ),
           )
        );
  }
}
