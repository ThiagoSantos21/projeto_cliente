import 'dart:math' as math;
import '../../cliente_model.dart';

abstract class ClienteAdicionar{
  List<Cliente> execute(List<Cliente> clientes);
}

class ClienteAdicionarImpl implements ClienteAdicionar{

  @override
  List<Cliente> execute(List<Cliente> clientes){
    var rng = math.Random();
    clientes.insert(0, clientes.elementAt(rng.nextInt(9)));
    return clientes;
  }
}