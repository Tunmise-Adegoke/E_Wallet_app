import 'package:e_wallet_app/utils/constants.dart';
import 'package:e_wallet_app/widget/numpad.dart';
import 'package:e_wallet_app/widget/textfield.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
 const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

final TextEditingController _controller = TextEditingController();

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Transaction',
          style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: w * 0.06,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
        const  SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Send to',
              style: TextStyle(fontSize: w * 0.06),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          SizedBox(
            height: h * 0.13,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const ProfileCard();
                }),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black.withOpacity(0.1),
                child: const Icon(
                  Icons.person,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
             const Text(
                'Tunmise',
              ),
            ],
          ),
        const  SizedBox(
            height: 10,
          ),
          TextfieldContainer(),
          SizedBox(
            height: h * 0.03,
          ),
          Container(
            height: h * 0.41,
            width: double.infinity,
            decoration:const BoxDecoration(
              color: kCustomlightBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                NumPad(
                  delete: () {
                    _controller.text = _controller.text
                        .substring(0, _controller.text.length - 1);
                  },
                  controller: _controller,
                  onSubmit: () {},
                ),
              ],
            ),
          ),
        ],
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: kCustomlightBlue.withOpacity(0.3),
            child: const Icon(
              Icons.person,
              color: Colors.deepOrange,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Tunmise',
            // style: TextStyle(
            //   fontFamily: GoogleFonts.abel(),
            // ),
          ),
        ],
      ),
    );
  }
}
