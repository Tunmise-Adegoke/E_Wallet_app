import 'package:e_wallet_app/widget/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCard extends StatelessWidget {
   CreditCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.transparent,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 1000),
        child: Stack(
          children: [
            Positioned(
                left: 20,
                child: CreditCardWidget(
                  height: 178,
                  width: 320,
                  cardNumber: '123 456 789 0123456',
                  obscureCardNumber: false,
                  isHolderNameVisible: true,
                  expiryDate: '05/23',
                  cardHolderName: 'Tunmise Adegoke',
                  cvvCode: '468',
                  showBackView: false,
                  cardType: CardType.mastercard,
                  glassmorphismConfig: Glassmorphism(
                      blurX: 10.0,
                      blurY: 10.0,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.centerRight,
                        colors: [
                          kYellowColor,
                          Colors.deepOrange,
                        ]
                      ),),
                  onCreditCardWidgetChange: (CreditCardBrand) {},
                  textStyle: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontSize: 20,
                  ),
                ),
            ),
            Positioned(
                left: 20,
                child: CreditCardWidget(
                  height: 178,
                  width: 320,
                  cardNumber: '123 456 789 0123456',
                  obscureCardNumber: false,
                  isHolderNameVisible: true,
                  expiryDate: '05/23',
                  cardHolderName: 'Tunmise Adegoke',
                  cvvCode: '468',
                  showBackView: false,
                  cardType: CardType.mastercard,
                  glassmorphismConfig: Glassmorphism(
                    blurX: 10.0,
                    blurY: 10.0,
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.pink,
                          Colors.deepOrange,
                        ]
                    ),),
                  onCreditCardWidgetChange: (CreditCardBrand) {},
                  textStyle: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontSize: 20,
                  ),
                ),
            ),
            Positioned(
                top: 40,
                left: 40,
                child: CreditCardWidget(
                  height: 178,
                  width: 320,
                  cardNumber: '123 456 789 0123456',
                  obscureCardNumber: false,
                  isHolderNameVisible: true,
                  expiryDate: '05/23',
                  cardHolderName: 'Tunmise Adegoke',
                  cvvCode: '468',
                  showBackView: false,
                  cardType: CardType.mastercard,
                  glassmorphismConfig: Glassmorphism(
                    blurX: 10.0,
                    blurY: 10.0,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.centerRight,
                        colors: [
                          kYellowColor,
                          Colors.deepOrange,
                        ]
                    ),),
                  onCreditCardWidgetChange: (CreditCardBrand) {},
                  textStyle: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontSize: 20,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
