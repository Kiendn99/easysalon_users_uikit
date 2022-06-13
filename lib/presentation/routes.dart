import 'package:easysalon_users_app/_shared/motions/default_page_transition.dart';
import 'package:easysalon_users_app/presentation/widgets/generic/icon_page.dart';

import 'home/home.dart';
import 'widgets/generic/paragraph_page.dart';

appRoutes(args) => {
      Home.pagePath: () => DefaultPageTransition(child: Home()),
      ParagraphPage.path: () => DefaultPageTransition(child: ParagraphPage()),
      IconPage.path: () => DefaultPageTransition(child: IconPage()),
    };
