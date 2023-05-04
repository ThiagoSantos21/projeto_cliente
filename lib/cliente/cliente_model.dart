
class Cliente{

  String nome;
  String id;
  String cnpj;
  double distancia;
  String cep;
  String imagem;
  int mix;
  bool positivado;
  int ultimaVenda;
  bool inadimplente;
  String nomeComprador;

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
}