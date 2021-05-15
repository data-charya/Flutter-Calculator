import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  int firstnum;
  int secnum;
  String history = '';
  String texttodisp = '';
  String res = '';
  String op = '';

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color.fromRGBO(34, 37, 45, 1),
              width: size.width,
              height: size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: size.height / 5),
                    Text(
                      history,
                      style: GoogleFonts.montserrat(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white54,
                      ),
                    ),
                    Text(
                      texttodisp,
                      style: GoogleFonts.montserrat(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height / 2.8),
              decoration: BoxDecoration(
                color: Color.fromRGBO(41, 45, 54, 1),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              width: size.width,
              height: size.height / 1.6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.green,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "AC",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(38, 251, 212, 1),
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick('AC'),
                        ),
                        InkWell(
                          splashColor: Colors.white,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "C",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(38, 251, 212, 1),
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick('C'),
                        ),
                        InkWell(
                          splashColor: Colors.green,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "%",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(38, 251, 212, 1),
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick('%'),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "/",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(244, 122, 122, 1),
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("/"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "7",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("7"),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "8",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("8"),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "9",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("9"),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "x",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(244, 122, 122, 1),
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("x"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "4",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("4"),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "5",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("5"),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "6",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("6"),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "—",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(244, 122, 122, 1),
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("—"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("1"),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "2",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("2"),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "3",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("3"),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(244, 122, 122, 1),
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("+"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "0",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("0"),
                        ),
                        InkWell(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "+/-",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("-"),
                        ),
                        InkWell(
                          child: Container(
                            width: 160,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 32, 45, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "=",
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(244, 122, 122, 1),
                                ),
                              ),
                            ),
                          ),
                          onTap: () => btnOnclick("="),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int btnOnclick(String text) {
    if (text == 'C') {
      texttodisp = '';
      firstnum = 0;
      secnum = 0;
      res = '';
    } else if (text == 'AC') {
      texttodisp = '';
      firstnum = 0;
      secnum = 0;
      res = '';
      history = '';
    } else if (text == '+' || text == '—' || text == 'x' || text == '/'||text == '%') {
      firstnum = int.parse(texttodisp);
      res = '';
      op = text;
    } else if (text == '=') {
      secnum = int.parse(texttodisp);
      if (op == '+') {
        res = (firstnum + secnum).toString();
        history = firstnum.toString() + op.toString() + secnum.toString();
      }
      if (op == '—') {
        res = (firstnum - secnum).toString();
        history = firstnum.toString() + op.toString() + secnum.toString();
      }
      if (op == 'x') {
        res = (firstnum * secnum).toString();
        history = firstnum.toString() + op.toString() + secnum.toString();
      }
      if (op == '/') {
        res = (firstnum / secnum).toStringAsPrecision(5);
        history = firstnum.toString() + op.toString() + secnum.toString();
      }
      if (op == '%') {
        res = (firstnum % secnum).toStringAsPrecision(5);
        history = firstnum.toString() + op.toString() + secnum.toString();
      }
    } else if(text == '-') {
      res.toString().startsWith('-')
          ? res = res.toString().substring(1)
          : res = '-' + res.toString();
      texttodisp = res;
    }
    else {
    res = int.parse(texttodisp + text).toString();
    }

    setState(() {
      texttodisp = res;
    });
  }
}
