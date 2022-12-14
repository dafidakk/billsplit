import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BillSplit extends StatefulWidget {
  const BillSplit({super.key});

  @override
  State<BillSplit> createState() => _BillSplitState();
}

class _BillSplitState extends State<BillSplit> {
  buildButton(String text) {
    return Expanded(
      child: OutlinedButton(
          onPressed: () {},
          child: Text(
            text,
            style: infostyle,
          )),
    );
  }

  TextStyle infostyle = GoogleFonts.montserrat(
      fontSize: 15, color: Colors.black, fontWeight: FontWeight.w700);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  "Split Bill",
                  style: GoogleFonts.montserrat(
                      fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
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
                          Text(
                            "Total",
                            style: GoogleFonts.montserrat(
                                // after finish the app, refactor the fonts sparet utils
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "34",
                            style: GoogleFonts.montserrat(
                                fontSize: 34, fontWeight: FontWeight.w700),
                          ),
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
                                style: infostyle,
                              ),
                              Text(
                                "Tax",
                                style: infostyle,
                              ),
                              Text(
                                "Tip",
                                style: infostyle,
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
                                "10",
                                style: infostyle,
                              ),
                              Text(
                                "14 %",
                                style: infostyle,
                              ),
                              Text(
                                "15",
                                style: infostyle,
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
                height: 15,
              ),
              Text(
                "How many friends ?",
                style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Slider(
                min: 0,
                max: 15,
                divisions: 15,
                activeColor: Colors.yellow.shade400,
                inactiveColor: Colors.grey.shade400,
                value: 12,
                onChanged: (value) {},
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "TIP",
                          style: infostyle,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: Colors.grey.shade400,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                '20',
                                style: infostyle,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: Colors.grey.shade400,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.green.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: "Tax in %",
                          labelStyle: infostyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  // Bu kısmı mathgamedeki gibi refactor edebilirim
                  buildButton(1.toString()),
                  buildButton(2.toString()),
                  buildButton(3.toString()),
                ],
              ),
              Row(
                children: [
                  // Bu kısmı mathgamedeki gibi refactor edebilirim
                  buildButton(4.toString()),
                  buildButton(5.toString()),
                  buildButton(6.toString()),
                ],
              ),
              Row(
                children: [
                  // Bu kısmı mathgamedeki gibi refactor edebilirim
                  buildButton(7.toString()),
                  buildButton(8.toString()),
                  buildButton(9.toString()),
                ],
              ),
              Row(
                children: [
                  // Bu kısmı mathgamedeki gibi refactor edebilirim
                  buildButton("."),
                  buildButton(0.toString()),
                  buildButton("-"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
