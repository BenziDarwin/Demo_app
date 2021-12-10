import 'package:flutter/material.dart';
import 'package:flutter_payment_app/Components/colors.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/paymentbackground.png'),
            )
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h*0.14,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/success.png'),
                  )
              ),
            ),
            Text(
                "Success!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor,
              ),
            ),
            Text(
                "You have completed payment of 2 bills",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColor.idColor,
              ),
            ),
            SizedBox(height: h*0.05),
            Container(
              height: 140,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: Colors.grey,
                )
              ),
              child: Container(
                child: Column(
                  children: [
                   Row(
                     children: [
                       Container(
                         margin: EdgeInsets.all(5),
                         width: 50,
                         height: 50,
                         decoration: BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(25)
                         ),
                         child: Icon(Icons.done,size: 35 ,color: Colors.white,),
                       ),
                       SizedBox(width: 10),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text(
                               "KenGen Power",
                             style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.bold,
                               color: AppColor.mainColor
                             ),
                           ),
                           SizedBox(height: 8),
                           Text(
                             "ID:3809535987",
                             style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color: AppColor.idColor
                             ),
                           )
                         ],
                       ),
                       SizedBox(width: 20),
                       Column(
                         children: [
                           Text(
                             "",
                             style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.w500,
                                 color: AppColor.mainColor
                             ),
                           ),
                           Text(
                             "\$1280.00",
                           style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.w500,
                               color: AppColor.mainColor
                           ),
                         )],
                       ),


                     ],
                   )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
