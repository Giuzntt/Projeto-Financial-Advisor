import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinancialModel {
  int id;
  String nome;
  String anuncio;
  String conteudo;
  Color cores;
  Icon icone;
  Icons icones;
  AssetImage image;
  String url;

  FinancialModel({
    this.id,
    this.nome,
    this.anuncio,
    this.conteudo,
    this.cores,
    this.icone,
    this.icones,
    this.image,
    this.url,
  });
}
