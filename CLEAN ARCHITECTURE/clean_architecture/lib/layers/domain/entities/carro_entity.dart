// ignore_for_file: public_member_api_docs, sort_constructors_first
class CarroEntity {
  String placa;
  int qtdPortas;
  double valor;

  CarroEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  });

  double get valorReal => valor * qtdPortas;

  setLogica() {
    if (valorReal > 10000.00) {
      valor *= 2;
    }
  }
}
