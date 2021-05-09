import 'package:financial_advisor2/repository/financial_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:financial_advisor2/models/financial_model.dart';

class FinancialScreen extends StatefulWidget {
  @override
  _FinancialScreenState createState() => _FinancialScreenState();
}

class _FinancialScreenState extends State<FinancialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(2, 260, 96, .9),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(2, 260, 96, .9),
        title: Text("Financial Advisor"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<FinancialModel>>(
        future: FinancialRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center();
          }
        },
      ),
    );
  }

  ListView buildListView(List<FinancialModel> financial) {
    return ListView.builder(
      itemCount: financial == null ? 0 : financial.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardFinance(financial[index]);
      },
    );
  }

  Card cardFinance(FinancialModel financial) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: financial.cores,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.white24,
                ),
              ),
            ),
            child: financial.icone,
          ),
          title: Text(
            financial.nome,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: <Widget>[],
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/financial_detalhes",
              arguments: financial,
            );
          },
        ),
      ),
    );
  }
}
