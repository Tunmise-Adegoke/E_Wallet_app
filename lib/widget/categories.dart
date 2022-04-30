import 'package:e_wallet_app/widget/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0, left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: kYellowColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/icons8-send-49.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('Send'),
              ],
            ),
            Column(children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/icons8-pay-100.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text('Pay'),
            ]),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/icons8-withdraw-100.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('WithDraw'),
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/icons8-bill-100.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('Bill'),
              ],
            ),
            Column(children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 25,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/icons8-voucher-100.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text('Voucher'),
            ])
          ],
        ),
      ),
    );
  }
}
//  List<CategoryCard> icon = <CategoryCard>[
//    CategoryCard(
//        categoryImage: 'assets/images/icons8-send-49.png',
//        categoryName: 'Send'),
//    CategoryCard(
//        categoryImage: 'assets/images/icons8-pay-100.png',
//        categoryName: 'Pay'),
//    CategoryCard(
//        categoryImage: 'assets/images/icons8-withdraw-100.png',
//        categoryName: 'Withdraw'),
//    CategoryCard(
//        categoryImage: 'assets/images/icons8-bill-100.png',
//        categoryName: 'Bill'),
//    CategoryCard(
//        categoryImage: 'assets/images/icons8-voucher-100.png',
//        categoryName: 'Voucher'),
//  ];
// class CategoryCard {
//   final String categoryImage;
//   final String categoryName;
//
//   const CategoryCard({Key? key,
//     required this.categoryImage,
//     required this.categoryName });
// }
//    // ListView.separated(
//         //     scrollDirection: Axis.horizontal,
//         //     physics: ScrollPhysics(),
//         //     shrinkWrap: true,
//         //     itemCount: 5,
//         //   separatorBuilder: (BuildContext context, int index) {
//         //     return SizedBox(width: 12,);
//         //   },
//         //     itemBuilder: (BuildContext context, int index) =>
//         //         Column(
//         //           children: [
//         //             CircleAvatar(
//         //               radius: 25,
//         //               child: Image.asset(,
//         //                 fit: BoxFit.cover,),
//         //             ),
//         //             SizedBox(height: 8,),
//         //             Text(),
//         //           ],
//         //         ),
//         //   ),
