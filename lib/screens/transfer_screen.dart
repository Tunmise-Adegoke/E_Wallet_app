import 'package:e_wallet_app/utils/constants.dart';
import 'package:e_wallet_app/widget/numpad.dart';
import 'package:e_wallet_app/widget/progress_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferScreen extends StatefulWidget {
  TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

final TextEditingController _controller = TextEditingController();

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Transaction'),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text('Send to'),
                // ListView.builder(
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //     itemCount: 4,
                //     itemBuilder: (context, int) {
                //       return ProfileCard();
                //     }),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 75,
                  width: 350,
                  decoration: BoxDecoration(
                    color: kCustomlightBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white.withOpacity(0.1),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('Tunmise'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  showCursor: false,
                  style: const TextStyle(fontSize: 40),
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                NumPad(
                    delete: () {
                      _controller.text = _controller.text
                          .substring(0, _controller.text.length - 1);
                    },
                    controller: _controller),
                SizedBox(
                  height: 30,
                ),
                SendButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.white.withOpacity(0.1),
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Tunmise',
          // style: TextStyle(
          //   fontFamily: GoogleFonts.abel(),
          // ),
        ),
      ],
    );
  }
}
