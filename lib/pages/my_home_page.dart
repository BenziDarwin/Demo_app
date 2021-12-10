import 'package:flutter/material.dart';
import 'package:flutter_payment_app/Components/colors.dart';
import 'package:flutter_payment_app/Widgets/buttons.dart';
import 'package:flutter_payment_app/Widgets/large_buttons.dart';
import 'package:flutter_payment_app/Widgets/text_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        width: w,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButton(),
        ]),
      ),
    );
  }
  _headSection(){
    return Container(
      height: 300,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _buttonContainer(),
          _textContainer(),
        ],
      ),
    );
  }
  _mainBackground() {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage('assets/background.png'),
          )
        ),
      ),
    );
  }
  _curveImageContainer() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
        child: Container(
          height: MediaQuery.of(context).size.height*0.2,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/curve.png"),
            )
          ),
        ),
    );
  }
  _buttonContainer() {
    return Positioned(
      bottom: -15,
        right: 22,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                barrierColor: Colors.transparent,
                context: context,
                builder: (BuildContext bc) {
              return Container(
                height: MediaQuery.of(context).size.height-205,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height-300,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xFFeef1f4).withOpacity(0.5),
                        )),
                    Positioned(
                      top: 0,
                        right: 23,
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 300,
                          width: 80,
                          decoration: BoxDecoration(
                            color: AppColor.mainColor,
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularButton(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icons.cancel,
                                  iconColor: AppColor.mainColor,
                              ),
                              CircularButton(
                                onTap: () {},
                                icon: Icons.add,
                                label: "Add Bill",
                                iconColor: AppColor.mainColor,
                              ),
                              CircularButton(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                label: "History",
                                icon: Icons.history,
                                iconColor: AppColor.mainColor,
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              );
            });
          },
          child: Container(
            height: MediaQuery.of(context).size.height*0.2,
            width: MediaQuery.of(context).size.width*0.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/lines.png"),
              ),
              boxShadow: [BoxShadow(
                blurRadius: 100,
                offset: Offset(0, 1),
                color: Color(0xFF11324d).withOpacity(0.2),
              )]
            ),
          ),
        ),
    );
  }
  _listBills() {
    return Positioned(
        top: 310,
        left: 0,
        bottom: 0,
        right: 10,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (_,index) {
              return Container(
                width: MediaQuery.of(context).size.width-20,
                margin: EdgeInsets.only(bottom: 20),
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [BoxShadow(
                    color: Color(0xFFd8dbe0),
                    offset: Offset(1, 1),
                    blurRadius: 20.0,
                  )],
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 3,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage("assets/brand1.png"),
                                    )
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "KenGen Power",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.mainColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "ID: 194386794",
                                    style: TextStyle(
                                      color: AppColor.idColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedText(color: AppColor.green, text: "Auto pay on 24th May 18"),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 30,
                                  margin: EdgeInsets.only(right: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppColor.selectBackground,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Select",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: AppColor.selectColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "\$1248.00",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: AppColor.mainColor,
                                  ),
                                ),
                                Text(
                                  "Due in 3 days",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.halfOval,
                                  ),
                                ),
                                SizedBox(height: 10)
                              ]
                          ),
                          Container(
                            width: 5,
                            height: 35,
                            decoration: BoxDecoration(
                                color: AppColor.halfOval,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                )
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
          ),
        )
    );
  }
  _payButton() {
    return Positioned(
        bottom: 0,
        child: AppLargeButton(
          onTap: () {
          Navigator.pushNamed(context, '/payment');
        } ,
          text: "Pay all Bills",
          backgroundColor: AppColor.mainColor,
          textColor:Colors.white
        ),
    );
  }
  _textContainer() {
    return Positioned(
      top: 60,
        left: 10,
        child: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "My Bills",
                style: TextStyle(
                  fontSize: 65,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
            ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                    "My Bills",
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w700,
                    color: Colors.white.withOpacity(0.2),
                ),
              ),
              ),
        ]
        ))
    );
  }
}


