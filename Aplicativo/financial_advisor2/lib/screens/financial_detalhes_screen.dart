import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:financial_advisor2/models/financial_model.dart';

import 'components/readbutton.dart';
import 'components/topContentText.dart';

class FinancialDetalhesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FinancialModel financialModel =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Column(
        children: <Widget>[
          TopContentText(financialModel: financialModel),
          ReadButton(financialModel: financialModel),
        ],
      ),
    );
  }
}
