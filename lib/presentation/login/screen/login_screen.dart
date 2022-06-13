import 'package:easysalon_users_app/_shared/intl/generated/l10n.dart';
import 'package:easysalon_users_app/presentation/base/base_widget.dart';
import 'package:easysalon_users_app/presentation/login/viewmodel/login_viewmodel.dart';
import 'package:easysalon_users_app/presentation/widgets/dialog_sheet/dialog_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../_shared/_shared.dart';
import '../../widgets/frame/screen_frame.dart';
import '../../widgets/widget.dart';
import '../data/repositories/login_repository_impl.dart';
import '../domain/repositories/login_repository.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginViewModel? _viewModel;
  late LoginRepository? loginRepository = LoginRepositoryImpl();
  TextEditingController? phoneController = TextEditingController();
  TextEditingController? passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginViewModel>(
        viewModel: LoginViewModel(loginRepository!),
        onViewModelReady: (viewModel) => _viewModel = viewModel!..init(),
        childMobile: ScreenFrame(
          children: [
            _logoAppItem(),
            _phoneTextFieldItem(),
            _passTextFieldItem(),
            _forgetPassItem(),
            _loginButton(),
            _loginButtonWithFacebook(),
            _signUpItem(),
          ],
        ));
  }

  Widget _signUpItem() {
    return Container(
      margin: CustomEdgeInsets.only(
        top: LayoutSize.big,
      ),
      child: Align(
        alignment: Alignment.center,
        child: GestureDetector(
          // onTap: () => Navigator.pushNamed(context, SignUpPage.path),
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: S.current.signInDoNotHaveAnAccount,
              style: AppTextStyle.smallRegular(color: AppColors.rockBlue),
            ),
            TextSpan(
                text: ' ' + S.current.register,
                style: AppTextStyle.smallRegular()),
          ])),
        ),
      ),
    );
  }

  Widget _loginButtonWithFacebook() {
    return Container(
      margin: EdgeInsets.only(top: 176.h),
      child: FullWidthButtonDefault(
        label: S.current.siginInWithFb,
        prefixIcon: AppImages.icFBLogin,
        onPressed: () {},
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      margin: CustomEdgeInsets.only(
        top: LayoutSize.big,
      ),
      child: GreenFullWidthButton(
        label: S.current.signIn,
        onPressed: () async {
          await _viewModel!.login(phoneController!, passController);
          if (_viewModel!.error.isNotEmpty) {
            CustomShow.showAlertDialog(
              context: context,
              titleText: S.current.signInNotification,
              contentText: _viewModel!.error,
              onConfirm: () {
                _viewModel!.setLoading(false);
                Navigator.pop(context);
              },
              onCancel: () {
                _viewModel!.setLoading(false);
                Navigator.pop(context);
              },
              confirmText: S.current.signInOke,
              cancelText: S.current.signInCancel,
            );
          }
        },
      ),
    );
  }

  Widget _forgetPassItem() {
    return Container(
      margin: CustomEdgeInsets.only(
        top: LayoutSize.large,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {},
          child: Text(
            S.current.signInForgotPassword,
            style: AppTextStyle.smallRegular(),
          ),
        ),
      ),
    );
  }

  Widget _passTextFieldItem() {
    return Container(
      margin: CustomEdgeInsets.only(
        top: LayoutSize.large,
      ),
      child: PassWordTextFormField(
        controller: passController,
        hintText: S.current.signInPassword,
      ),
    );
  }

  Widget _phoneTextFieldItem() {
    return Container(
      margin: CustomEdgeInsets.only(
        top: LayoutSize.tiny,
      ),
      child: TextFormFieldDefault(
        counterText:'',
        maxLength: 10,
        keyboardType:TextInputType.number,
        hintText: S.current.signupHint,
        controller: phoneController,
      ),
    );
  }

  Widget _logoAppItem() {
    return Container(
      margin: CustomEdgeInsets.only(
        top: LayoutSize.big,
      ),
      child: Image.asset(
        AppImages.imageLogoApp.getPNGImageAssets,
        height: 200.h,
      ),
    );
  }
}
