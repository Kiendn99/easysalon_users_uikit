import 'package:easysalon_users_app/_shared/configs/icons/line_icons.dart';
import 'package:easysalon_users_app/_shared/services/layout_notifier.dart';
import 'package:easysalon_users_app/_shared/services/theme_notifier.dart';
import 'package:easysalon_users_app/_shared/widgets/icons/CustomIcon.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/header_bar.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/space.dart';
import 'package:easysalon_users_app/_shared/widgets/layout/standard_page.dart';
import 'package:easysalon_users_app/_shared/widgets/typography/paragraph.dart';
import 'package:easysalon_users_app/_shared/widgets/typography/paragraph_content.dart';
import 'package:easysalon_users_app/_shared/widgets/typography/paragraph_list.dart';
import 'package:flutter/material.dart';

class ParagraphPage extends StatefulWidget {
  static const String path = '/pages/widgets/paragraph_page';

  const ParagraphPage({Key? key}) : super(key: key);

  @override
  _ParagraphPageState createState() => _ParagraphPageState();
}

class _ParagraphPageState extends State<ParagraphPage> {
  Widget _paragraph() {
    return SpaceBox(
      bottomSize: LayoutSize.big,
      child: Column(
        children: [
          Paragraph(
            content: "Simple Paragraph",
            size: LayoutSize.large,
            weight: FontWeight.bold,
            color: ThemeColor.bondiBlue,
          ),
          Paragraph(
            content: "Lorem ipsum dolor sit amet.",
            color: ThemeColor.dark,
          ),
          Paragraph(
            content: "Consectetur adipiscing elit.",
            color: ThemeColor.darkGrey,
            italic: true,
          ),
          Paragraph(
            content: "Nulla id feugiat odio.",
            color: ThemeColor.warning,
            bold: true,
          ),
          Paragraph(
            content: "Id posuere odio.",
            color: ThemeColor.danger,
            underline: true,
          ),
          Paragraph(
            content:
                "Maecenas turpis odio, dapibus quis suscipit at, volutpat ut neque.",
            color: ThemeColor.lightGrey,
            decoration: TextDecoration.lineThrough,
          ),
          Paragraph(
            content:
                "Integer a lacus interdum, posuere turpis in, pulvinar velit.",
            color: ThemeColor.dark,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.dashed,
          ),
        ],
      ),
    );
  }

  Widget _richParagraph() {
    return SpaceBox(
      bottomSize: LayoutSize.big,
      child: Column(
        children: [
          Paragraph(
            content: "Rich Paragraph",
            size: LayoutSize.large,
            weight: FontWeight.bold,
            color: ThemeColor.secondary,
          ),
          Paragraph(
            contents: [
              ParagraphContent(
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              ),
              ParagraphContent(
                content: "Nulla id feugiat odio, id posuere odio.",
                color: ThemeColor.primary,
                italic: true,
              ),
              ParagraphContent(
                content:
                    "Maecenas turpis odio, dapibus quis suscipit at, volutpat ut neque.",
                color: ThemeColor.warning,
                bold: true,
              ),
              ParagraphContent(
                content:
                    "Integer a lacus interdum, posuere turpis in, pulvinar velit.",
                color: ThemeColor.danger,
                underline: true,
              ),
              ParagraphContent(
                content: "Sed finibus mauris eu convallis congue.",
                color: ThemeColor.secondary,
                decoration: TextDecoration.lineThrough,
              ),
              ParagraphContent(
                content:
                    "Curabitur malesuada ligula libero, nec mattis tellus gravida pharetra.",
                color: ThemeColor.dark,
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _listParagraph() {
    return SpaceBox(
      bottomSize: LayoutSize.big,
      child: Column(
        children: [
          Paragraph(
            content: "List Paragraph",
            size: LayoutSize.large,
            weight: FontWeight.bold,
            color: ThemeColor.secondary,
          ),
          ParagraphList(
            contents: [
              ParagraphContent(
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              ),
              ParagraphContent(
                content: "Nulla id feugiat odio, id posuere odio.",
                color: ThemeColor.primary,
                italic: true,
              ),
              ParagraphContent(
                content:
                    "Maecenas turpis odio, dapibus quis suscipit at, volutpat ut neque.",
                color: ThemeColor.warning,
                bold: true,
              ),
              ParagraphContent(
                content:
                    "Integer a lacus interdum, posuere turpis in, pulvinar velit.",
                color: ThemeColor.danger,
                underline: true,
              ),
              ParagraphContent(
                content: "Sed finibus mauris eu convallis congue.",
                color: ThemeColor.secondary,
                decoration: TextDecoration.lineThrough,
              ),
              ParagraphContent(
                content:
                    "Curabitur malesuada ligula libero, nec mattis tellus gravida pharetra.",
                color: ThemeColor.dark,
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _listParagraphSimple() {
    return SpaceBox(
      bottomSize: LayoutSize.big,
      child: Column(
        children: [
          Paragraph(
            content: "List Paragraph",
            size: LayoutSize.large,
            weight: FontWeight.bold,
            color: ThemeColor.secondary,
          ),
          ParagraphList(leadingColor: ThemeColor.danger, texts: [
            "Nulla id feugiat odio, id posuere odio.",
            "Donec eget massa at ligula pulvinar hendrerit.",
            "Aliquam tempus tellus dui, sit amet dictum.",
            "Aenean et sodales tellus.",
            "Donec viverra in nibh eu rutrum.",
            "Cras eleifend eget ipsum eu porta.",
          ]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        header: HeaderBar(
            leading: InkWell(
                onTap: (() => Navigator.pop(context)),
                child: CustomIcon(icon: LineIcons.arrow_left)),
            title: Paragraph(
              content: 'Paragraph'.toUpperCase(),
              isCenter: true,
              bold: true,
              linePadding: LayoutSize.none,
            ),
            action: SizedBox(width: 30)),
        children: [
          Expanded(
            child: SpaceBox(
                all: true,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        children: [
                          _paragraph(),
                          _richParagraph(),
                          _listParagraph(),
                          _listParagraphSimple()
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ]);
  }
}
