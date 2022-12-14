import 'package:billsplit/const.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final double friendsvalue;
  final double tip;
  final String tax;
  final String bill;

  const ResultPage({
    super.key,
    required this.bill,
    required this.friendsvalue,
    required this.tax,
    required this.tip,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String dividedamount = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    divideAmount();
  }

  divideAmount() {
    double taxamount =
        double.parse(widget.bill) * (double.parse(widget.tax) / 100);
    double finalbill = (double.parse(widget.bill) + taxamount + widget.tip) /
        widget.friendsvalue;
    setState(() {
      dividedamount = finalbill.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Splitted Bill",
                  style: googleTextStyle_25,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade400,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Equally divided in to: ",
                              style: googleTextStyle_15),
                          Text('$dividedamount TL', style: googleTextStyle_35),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Friends",
                                style: googleTextStyle_15,
                              ),
                              Text(
                                "Tax",
                                style: googleTextStyle_15,
                              ),
                              Text(
                                "Tip",
                                style: googleTextStyle_15,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.friendsvalue.toString(),
                                style: googleTextStyle_15,
                              ),
                              Text(
                                "${widget.tax} %",
                                style: googleTextStyle_15,
                              ),
                              Text(
                                '${widget.tip.round().toString()} TL',
                                style: googleTextStyle_15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Everybody should pay: $dividedamount TL",
                style: googleTextStyle_20,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.orange.shade400),
                  onPressed: () => Navigator.pop(context),
                  child: Center(
                      child: Text(
                    "Calculate Again?",
                    style: googleTextStyle_20_w,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
