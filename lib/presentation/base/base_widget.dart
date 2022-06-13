import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'base_viewmodel.dart';

class BaseWidget<T extends BaseViewModel> extends StatefulWidget {
  final Widget? childMobile;

  // final Widget Function(BuildContext context, T viewModel, Widget? child)
  //   builder;
  final T viewModel;
  final Function(T? viewModel)? onViewModelReady;

  BaseWidget({
    Key? key,
    // required this.builder,
    required this.viewModel,
    required this.childMobile,
    this.onViewModelReady,
  }) : super(key: key);

  _BaseWidgetState<T> createState() => _BaseWidgetState<T>();
}

class _BaseWidgetState<T extends BaseViewModel> extends State<BaseWidget<T>> {
  T? viewModel;

  @override
  void initState() {
    viewModel = widget.viewModel;
    if (widget.onViewModelReady != null) {
      widget.onViewModelReady!(viewModel);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
        create: (context) => viewModel!..setContext(context),
        child: Stack(
          children: [
            widget.childMobile ?? SizedBox(),
            _buildLoading(),
          ],
        ));
  }

  Widget _buildLoading() {
    return StreamBuilder<bool>(
        stream: viewModel!.loadingSubject,
        builder: (context, snapshot) {
          print(viewModel!.loadingSubject.value);
          if (snapshot.hasData && snapshot.data!) {
            return const Center(
                child: CupertinoActivityIndicator(
              radius: 20,
            ));
          }
          return SizedBox();
        });
  }
}
