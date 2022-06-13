import 'package:easysalon_users_app/presentation/widgets/dialog_sheet/thank_for_rating_sheet.dart';
import 'package:flutter/material.dart';

import '../../../_shared/_shared.dart';
import '../frame/screen_frame.dart';
import 'custom_show.dart';
import 'type_component_group.dart';

class DialogAndSheetPage extends StatelessWidget {
  const DialogAndSheetPage({
    Key? key,
    required this.title,
    required this.titleText,
    required this.contentText,
    required this.confirmText,
    required this.cancelText,
    required this.onConfirm,
  }) : super(key: key);
  final title, titleText, contentText, confirmText, cancelText;
  final Function onConfirm;
  static const String path = '/pages/widgets/dialog_page';
  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      title: "Dialog and Sheet",
      children: [
        TypeComponentGroup(
          type: "Basic Dialog",
          componentList: [
            TextButton(
                onPressed: () => 
                CustomShow.showAlertDialog(
                  context: context,
                      titleText: "Xoá Salon?",
                      contentText:
                          "Bạn đang xoá Salon khỏi danh sách. Lưu ý tác vụ này không thể khôi phục.",
                      onConfirm: () {},
                      onCancel: () => Navigator.pop(context),
                      confirmText: "Xóa",
                      cancelText: "Hủy bỏ",
                    ),
                child: Text(
                  "Show Dialog",
                  style: AppTextStyle.mediumRegular(),
                ))
          ],
        ),
        TypeComponentGroup(
          type: "Basic Bottom Sheet",
          componentList: [
            TextButton(
                onPressed: () => CustomShow.showBottomSheet(
                      padding: CustomEdgeInsets.only(
                        left: LayoutSize.small,
                        right: LayoutSize.small,
                        top: LayoutSize.small,
                        bottom: LayoutSize.big,
                      ),
                      children: [ThankForRatingSheet()],
                    ),
                child: Text(
                  "Show Bottom Sheet",
                  style: AppTextStyle.mediumRegular(),
                ))
          ],
        ),
      ],
    );
  }
  
}
