import 'package:easysalon_users_app/presentation/base/base.dart';
import 'package:easysalon_users_app/presentation/template/domain/repositories/template_repository.dart';

class TemplateViewModel extends BaseViewModel {
  late TemplateRepository? repository;
  TemplateViewModel(TemplateRepository repository) {
    this.repository = repository;
  }
  void send(String template){
    repository!.getTemplate(template: template);
  }
  int count = 0;
  init() async {}
  int sum() {
    count += 1;
    notifyListeners();
    return count;
  }

}
