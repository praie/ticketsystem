import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:login_signup_screen/login.dart';

class MainCardDisplay extends StatefulWidget {
  final String firstname;
  final String surname;
  final String companyname;
  final String address;
  final String city;
  final String region;
  final String branchname;
  final String ticketnumber;
  final String agentlevel;
  final String problemdesc;
  final String assignmentstatus;

  MainCardDisplay({
    this.firstname,
    this.surname,
    this.companyname,
    this.address,
    this.city,
    this.region,
    this.branchname,
    this.ticketnumber,
    this.agentlevel,
    this.problemdesc,
    this.assignmentstatus,
  });

  @override
  CardDisplay createState() => CardDisplay();
}

class CardDisplay extends State<MainCardDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    widget.firstname ?? 'First Name',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                  )),
                  Padding(padding: const EdgeInsets.all(10)),
                  Expanded(
                      child: Text(
                    widget.surname ?? 'Surname',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    widget.companyname ?? 'Company Name',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                  )),
                  Padding(padding: const EdgeInsets.all(10)),
                  Expanded(
                      child: Text(
                    widget.address ?? 'Address',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    widget.city ?? 'City',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                  )),
                  Padding(padding: const EdgeInsets.all(10)),
                  Expanded(
                      child: Text(
                    widget.region ?? 'Region',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    widget.branchname ?? 'Branch Name',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                  )),
                  Padding(padding: const EdgeInsets.all(10)),
                  Expanded(
                      child: Text(
                    widget.ticketnumber ?? 'Ticket Number',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    widget.agentlevel ?? 'Agent Level',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                  )),
                  Padding(padding: const EdgeInsets.all(10)),
                  Expanded(
                      child: Text(
                    widget.problemdesc ?? 'Problem Description',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
