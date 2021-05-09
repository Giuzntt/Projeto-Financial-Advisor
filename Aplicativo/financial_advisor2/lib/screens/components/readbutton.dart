import 'package:financial_advisor2/models/financial_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ReadButton extends StatelessWidget {
  const ReadButton({
    Key key,
    @required this.financialModel,
  }) : super(key: key);

  final FinancialModel financialModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              financialModel.conteudo,
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.justify,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () => launchInBrowser(financialModel.url),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(2, 260, 96, .9)),
                child: Text(
                  "Venha Conhecer!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future launchInBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
