import 'package:badges/badges.dart' as badge;
import 'package:e_wallet_app/widget/transfer_button.dart';
import 'package:e_wallet_app/screens/transaction_history.dart';
import 'package:e_wallet_app/screens/credit_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    final user = FirebaseAuth.instance.currentUser!;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 8,
                  right: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back!',
                          style: TextStyle(
                            fontFamily: 'JosefinSan',
                            fontSize: w * 0.05,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          user.email!,
                          style: TextStyle(
                            fontFamily: 'JosefinSan',
                            fontSize: w * 0.04,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    badge.Badge(
                      badgeColor: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                      position: const badge.BadgePosition(bottom: 25),
                      child: IconButton(
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                        },
                        icon: const Icon(
                          Icons.logout_rounded,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              const CreditCard(),
              SizedBox(
                height: h * 0.02,
              ),
              const CategoryCard(),
              SizedBox(
                height: h * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Transaction',
                  style: TextStyle(
                    fontFamily: 'JosefinSan',
                    fontSize: w * 0.05,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 0.02,
              ),
              const TransationList(),
            ],
          ),
        ),
      ),
    );
  }
}
