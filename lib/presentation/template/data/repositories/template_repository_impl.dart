import 'package:easysalon_users_app/presentation/template/domain/repositories/template_repository.dart';

class TemplateRepositoryImpl extends TemplateRepository{
  @override
  Future<void> getTemplate({required String template}) async{
    throw UnimplementedError(); // load data from Service firebase or API webservice
  }

}