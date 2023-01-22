import 'package:flutter/cupertino.dart';

class EnderecoModel with ChangeNotifier {
  int? id;
  String? idUsuario;
  String? tipo;
  String? logradouro;
  String? numero;
  String? bairro;
  String? cidade;
  String? estado;
  String? cep;

  EnderecoModel({
    required this.id,
    required this.idUsuario,
    required this.tipo,
    required this.logradouro,
    required this.numero,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.cep,
  });

  EnderecoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idUsuario = json['idUsuario'];
    tipo = json['tipo'];
    logradouro = json['logradouro'];
    numero = json['numero'];
    bairro = json['bairro'];
    cidade = json['cidade'];
    estado = json['estado'];
    cep = json['cep'];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'idUsuario': idUsuario,
        'tipo': tipo,
        'logradouro': logradouro,
        'numero': numero,
        'bairro': bairro,
        'cidade': cidade,
        'estado': estado,
        'cep': cep
      };

  static List<EnderecoModel> enderecosFromJson(List fullJson) {
    return fullJson.map((data) {
      return EnderecoModel.fromJson(data);
    }).toList();
  }
}
