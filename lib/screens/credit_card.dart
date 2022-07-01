import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';

class CreditCard extends StatelessWidget {
  CreditCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        height: 200,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/images/image6.jpeg'),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 100,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.blue.withOpacity(0.3)
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    border: Border.all(color: Colors.black, width: 2)),
                child: Column(
                  children: [
                    Text(
                      'My Balance',
                      style: TextStyle(fontSize: w * 0.06),
                    ),
                    SizedBox(height: 10),
                    Text('#345678.000', style: TextStyle(fontSize: w * 0.05)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // child: CreditCardWidget(
      //   height: 178,
      //   width: 320,
      //   cardNumber: '123 456 789 0123456',
      //   obscureCardNumber: false,
      //   isHolderNameVisible: true,
      //   expiryDate: '05/23',
      //   cardHolderName: 'Tunmise Adegoke',
      //   cvvCode: '468',
      //   showBackView: false,
      //   cardType: CardType.mastercard,
      //   glassmorphismConfig: Glassmorphism(
      //     blurX: 10.0,
      //     blurY: 10.0,
      //     gradient: LinearGradient(
      //         begin: Alignment.topLeft,
      //         end: Alignment.centerRight,
      //         colors: [
      //           kYellowColor,
      //           Colors.deepOrange,
      //         ]),
      //   ),
      //   onCreditCardWidgetChange: (CreditCardBrand) {},
      //   textStyle: TextStyle(
      //     fontFamily: 'JosefinSans',
      //     fontSize: 20,
      //   ),
      // ),
    );
  }
}
