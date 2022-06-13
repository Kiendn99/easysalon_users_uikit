import 'package:easysalon_users_app/presentation/template/viewmodel/template_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../base/base_widget.dart';
import '../data/repositories/template_repository_impl.dart';
import '../domain/repositories/template_repository.dart';

class TemplateScreen extends StatefulWidget {
  const TemplateScreen({Key? key}) : super(key: key);

  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
  late TemplateViewModel? _viewModel;
  late TemplateRepository? repository = TemplateRepositoryImpl();
  @override
  Widget build(BuildContext context) {
    return BaseWidget<TemplateViewModel>(
        viewModel: TemplateViewModel(repository!),
        onViewModelReady: (viewModel) => _viewModel = viewModel!..init(),
        childMobile: Scaffold(
            body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  _viewModel!.sum();
                },
                child: Selector<TemplateViewModel, int>(
                  builder: (context, data, child) {
                    print('Update UI Consumer 1');
                    return Container(
                      height: 40,
                      width: double.infinity,
                      child: Text(data.toString()),
                    );
                  },
                  selector: (buildContext, countPro) {
                    return countPro.count;
                  },
                ),

                //
              ),
            ],
          ),
        )));
  }
}
