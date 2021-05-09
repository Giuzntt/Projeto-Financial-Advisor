import 'package:financial_advisor2/models/financial_model.dart';
import 'package:flutter/material.dart';

class TopContentText extends StatelessWidget {
  const TopContentText({
    Key key,
    @required this.financialModel,
  }) : super(key: key);

  final FinancialModel financialModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: financialModel.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Content(financialModel: financialModel),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key key,
    @required this.financialModel,
  }) : super(key: key);

  final FinancialModel financialModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 80.0),
          Container(
            child: financialModel.icone,
          ),
          Container(
            width: 90.0,
            child: new Divider(color: Colors.green),
          ),
          SizedBox(height: 15.0),
          Text(
            financialModel.anuncio,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45.0,
            ),
          ),
          SizedBox(height: 22.7),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
