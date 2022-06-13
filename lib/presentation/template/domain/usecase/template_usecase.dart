import 'package:easysalon_users_app/presentation/template/domain/repositories/template_repository.dart';

class TemplateUseCase{
  TemplateUseCase({required this.repository});
  final TemplateRepository repository;
  Future<void> call({required String template})async{
    return repository.getTemplate(template: template);
  }
}