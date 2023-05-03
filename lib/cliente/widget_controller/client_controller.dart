import 'package:get/get.dart';
import 'package:projeto_cliente/cliente/cliente_model.dart';

class ClientController extends GetxController{

  RxList<Cliente> clientes = ([
    Cliente(nome: 'Thiago', id: '001', cnpj: '123401', distancia: 10, cep: '', imagem: '', mix: 1, positivado: true, ultimaVenda: 6, inadimplente: false, nomeComprador: 'Henrique'),
    Cliente(nome: 'Nelson', id: '002', cnpj: '123402', distancia: 20, cep: '', imagem: '', mix: 2, positivado: false, ultimaVenda: 12, inadimplente: true, nomeComprador: 'Rafael'),
    Cliente(nome: 'Elias', id: '003', cnpj: '123403', distancia: 30, cep: '', imagem: '', mix: 3, positivado: true, ultimaVenda: 43, inadimplente: false, nomeComprador: 'Luiza'),
    Cliente(nome: 'Kevin', id: '004', cnpj: '123404', distancia: 40, cep: '', imagem: '', mix: 4, positivado: false, ultimaVenda: 23, inadimplente: true, nomeComprador: 'Julia'),
    Cliente(nome: 'Gian', id: '005', cnpj: '123405', distancia: 50, cep: '', imagem: '', mix: 5, positivado: true, ultimaVenda: 13, inadimplente: false, nomeComprador: 'Emilio'),
    Cliente(nome: 'Emilio', id: '006', cnpj: '123406', distancia: 60, cep: '', imagem: '', mix: 6, positivado: false, ultimaVenda: 16, inadimplente: true, nomeComprador: 'Gian'),
    Cliente(nome: 'Julia', id: '007', cnpj: '123407', distancia: 70, cep: '', imagem: '', mix: 7, positivado: true, ultimaVenda: 11, inadimplente: false, nomeComprador: 'Kevin'),
    Cliente(nome: 'Luiza', id: '008', cnpj: '123408', distancia: 80, cep: '', imagem: '', mix: 8, positivado: false, ultimaVenda: 41, inadimplente: true, nomeComprador: 'Elias'),
    Cliente(nome: 'Rafael', id: '009', cnpj: '123409', distancia: 90, cep: '', imagem: '', mix: 9, positivado: true, ultimaVenda: 32, inadimplente: false, nomeComprador: 'Nelson'),
    Cliente(nome: 'Henrique', id: '010', cnpj: '123410', distancia: 100, cep: '', imagem: '', mix: 10, positivado: false, ultimaVenda: 21, inadimplente: true, nomeComprador: 'Thiago')
  ]).obs;

  /*void addClient(){
    clientes.insert(0, Cliente(nome: nome, id: id, cnpj: cnpj, distancia: distancia, cep: cep, imagem: imagem, mix: mix, positivado: positivado, ultimaVenda: ultimaVenda, inadimplente: inadimplente, nomeComprador: nomeComprador));
  }*/

}