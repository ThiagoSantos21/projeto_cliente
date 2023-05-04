import 'package:get/get.dart';
import 'package:projeto_cliente/cliente/widget_controller/client_controller.dart';
import 'package:projeto_cliente/cliente/domain/useCases/cliente_adicionar.dart';

class ClienteBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ClienteAdicionar>(() => ClienteAdicionarImpl());
    Get.lazyPut<ClientController>(() => ClientController(Get.find()));
  }
}
