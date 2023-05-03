import 'package:get/get.dart';
import 'package:projeto_cliente/cliente/widget_controller/client_controller.dart';

class ClienteBinding extends Bindings{

  @override
  void dependencies(){
    Get.lazyPut<ClientController>(() => ClientController());
  }
}
