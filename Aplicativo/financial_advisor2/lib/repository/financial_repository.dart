import 'package:financial_advisor2/core/app_colors.dart';
import 'package:financial_advisor2/f_icon.dart';
import 'package:financial_advisor2/models/financial_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'database.dart';

class FinancialRepository {
  Future<List<FinancialModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<FinancialModel> financial = [];

    if (db.created) {
      financial = [];
      financial.add(
        new FinancialModel(
          id: 1,
          nome: 'Itaú',
          anuncio: 'Tudo para você',
          cores: Color.fromRGBO(255, 127, 39, .9),
          icone: Icon(
            FIcon.itau_logo__1_,
            color: AppColors.white,
          ),
          image: new AssetImage("itau.jpg"),
          conteudo:
              'O Itaú Unibanco é a maior banco privado do Brasil, a maior instituição financeira da América Latina e uma das maiores do mundo. Nossa marca é apontada pelo 16º ano consecutivo como a mais valiosa do país, segundo o ranking Interbrand, entre outros importantes reconhecimentos.',
          url:
              'https://www.itau.com.br/contas/conta-corrente/?utm_source=google&utm_medium=cpc&utm_campaign=vs-pf-fjonbaqf-webnta-cobe-instituc&utm_content=af003-google-gog-ca027-sec-cpc-des-keyw-abrir_conta-nd-paid-vsfjonb00323&ef_id=CjwKCAjw7diEBhB-EiwAskVi11INvOUYyU2wK77Y5NSJAlG_tJKX78yA4N3YS5_6vlCcsTVy4FyU_BoCiDEQAvD_BwE:G:s&s_kwcid=AL!905!3!453424285430!e!!g!!abrir%20conta%20ita%C3%BA&gclid=CjwKCAjw7diEBhB-EiwAskVi11INvOUYyU2wK77Y5NSJAlG_tJKX78yA4N3YS5_6vlCcsTVy4FyU_BoCiDEQAvD_BwE',
        ),
      );

      financial.add(
        FinancialModel(
          id: 2,
          nome: 'NuBank',
          anuncio: 'Inove sua vida financeira',
          cores: Color.fromRGBO(128, 0, 255, .9),
          image: new AssetImage("nubank.jpg"),
          icone: Icon(
            FIcon.nubank_3__1_,
            color: AppColors.white,
          ),
          conteudo:
              'Ser Nubank é reinventar a sua vida financeira.  Moderno, simples e gratuito. Tudo para deixar o controle com você. Rende mais que a poupança, sem taxa de manutenção nem tarifas escondidas.Soluções simples, seguras e 100% digitais para você fazer tudo pelo celular.',
          url:
              'https://nubank.com.br/sobre-nos/?utm_source=google&utm_medium=cpc&utm_campaign=1784086961&utm_term=118905407472&utm_word=convite%20nubank&utm_content=501820902614&ad_position=&match_type=b&location=1001773&device=c&utm_keyword_id=aud-438554018549:kwd-308352575703&utm_placement=&extension=1322213043&geolocation=1001773&google_channel=google_brand&gclid=CjwKCAjw7diEBhB-EiwAskVi16kMgbMY_uoRq8ySbqyTgKsSH3AeUn3petasoeRtkG85uRMucad07hoCMq8QAvD_BwE',
        ),
      );
      financial.add(
        FinancialModel(
          id: 3,
          nome: ' ',
          anuncio: 'Faça mais com seu dinheiro',
          image: new AssetImage("mercadopago.jpg"),
          cores: Color.fromRGBO(0, 158, 227, .9),
          icone: Icon(
            FIcon.mercado_pago_logo__1_,
            color: AppColors.white,
          ),
          conteudo:
              'Pague, receba pagamentos, tenha linha de crédito e resolva suas finanças em um só lugar. Tenha uma linha de crédito, é simples e rápido, pague parcelado no boleto. Pague e receba seu dinheiro na hora.',
          url:
              'https://www.mercadopago.com.br/paid?code=S3ARCHGO&utm_source=google&utm_medium=search&utm_campaign=MLB_MP_G_AO_BKW_X_SEARCH_INST_TXS_HOME&utm_content=INST_HOME_MP&utm_term=CAMPANHA_HOME_INSTITUCIONAL_PURO&matt_tool=34485376&matt_word=MLB_MP_G_AO_BKW_X_SEARCH_INST_TXS_HOME&utm_term=EXTENSAO_PRECO&gclid=CjwKCAjw7diEBhB-EiwAskVi11tR3MGmI2lkHi_hscEiGT3rAf2jyz636FgP7pET6mMJN7ohxy6e3BoCh_kQAvD_BwE',
        ),
      );
      financial.add(
        FinancialModel(
          id: 4,
          nome: 'PagBank',
          anuncio: 'Um banco invador digital!',
          image: new AssetImage("pagbank.jpg"),
          cores: Color.fromRGBO(83, 181, 70, .9),
          icone: Icon(
            FIcon.uol,
            color: AppColors.white,
          ),
          conteudo:
              'Faça saques, compras online e presenciais no Brasil e no exterior usando o Cartão da Conta PagBank, e ainda consulte seu saldo e extrato pelo celular na hora.',
          url:
              'https://pagseguro.uol.com.br/conta-digital/conta-digital-gratis#rmcl',
        ),
      );

      financial.add(
        FinancialModel(
          id: 5,
          nome: 'Banco Original',
          anuncio: 'Digital e Original!',
          cores: Color.fromRGBO(46, 100, 38, .9),
          image: new AssetImage("bancooriginal.png"),
          icone: Icon(
            FIcon.banco_original,
            color: AppColors.white,
          ),
          conteudo:
              'Original é ter o cartão com maior número de funcionalidades para simplificar sua vida. A tecnologia de um banco 100% digital, aliada a experiência dos melhores profissionais do mercado, com soluções criadas para você.',
          url:
              'https://www.original.com.br/cartoes/?utm_source=google&utm_medium=links-patrocinados&utm_campaign=search-branding-institucional&utm_term=links-patrocinados&utm_content=bco202120000359id&gclid=CjwKCAjw7diEBhB-EiwAskVi13jja_c-Bf09HNDX1-8sY8zQhZW2ZfAtL6NTxnZdKBWaOE5YdolSHRoCMrsQAvD_BwE',
        ),
      );
    }

    return new Future.value(financial);
  }
}
