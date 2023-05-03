import 'dart:ffi';

class Cliente{
  Cliente({
    required this.nome,
    required this.id,
    required this.cnpj,
    required this.distancia,
    required this.cep,
    required this.imagem,
    required this.mix,
    required this.positivado,
    required this.ultimaVenda,
    required this.inadimplente,
    required this.nomeComprador
  });

  final String nome;
  final String id;
  final String cnpj;
  final double distancia;
  final String cep;
  final String imagem;
  final int mix;
  final bool positivado;
  final int ultimaVenda;
  final bool inadimplente;
  final String nomeComprador;
}