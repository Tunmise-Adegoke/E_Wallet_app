import 'package:e_wallet_app/widget/categories.dart';
import 'package:e_wallet_app/widget/credit_card.dart';
import 'package:e_wallet_app/widget/transaction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
 TextStyle? _textStyle;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // var brightness = MediaQuery.of(context).platformBrightness;
    // bool isDarkMode =(brightness == Brightness.dark);
    // if(isDarkMode){
    //   _textStyle = CustomTextStyleDark();
    // }else{
    //   _textStyle = CustomTextStyleDefault();
    // }
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome back!',
                            style: TextStyle(
                              fontFamily: 'JosefinSan',
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),),
                            SizedBox(height: 5,),
                            Text('Oluwatunmise',
                              style: TextStyle(
                                fontFamily: 'JosefinSan',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),),
                          ],
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.account_circle_outlined),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  CreditCard(),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Categories',
                      style: TextStyle(
                        fontFamily: 'JosefinSan',
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),),
                  ),
                  SizedBox(height: 10,),
                  CategoryList(),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Transaction',
                      style: TextStyle(
                        fontFamily: 'JosefinSan',
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),),
                  ),
                  SizedBox(height: 10,),
                  TransationList(),

                ],
              ),
            ),
          ),),
    );
  }
}
