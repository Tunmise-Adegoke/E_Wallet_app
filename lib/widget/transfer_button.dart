import 'package:e_wallet_app/screens/transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TransferScreen(),
            ),
          );
        },
        child: GlassmorphicContainer(
          padding: const EdgeInsets.only(top: 10),
          height: 80,
          width: 350,
          borderRadius: 30,
          blur: 15,
          alignment: Alignment.center,
          border: 2,
          linearGradient: LinearGradient(colors: [
            Colors.white.withOpacity(0.2),
            Colors.blue.withOpacity(0.2),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderGradient: LinearGradient(
            colors: [
              Colors.white24.withOpacity(0.5),
              Colors.white70.withOpacity(0.5),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.2),
                radius: 25,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.moneyBillTransfer),
                ),
              ),
              // SizedBox(width: 8),
              Text(
                'New Transaction',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(fontSize: w * 0.05),
                ),
              ),
              // SizedBox(width: 8),
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.2),
                radius: 25,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
