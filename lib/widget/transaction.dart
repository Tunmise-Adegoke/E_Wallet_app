import 'package:e_wallet_app/widget/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

 class Element {
   DateTime date;
   String name;
   String image;
   String price;
   Element(
      this.date,
     this.name,
     this.image,
     this.price
 );
 }


List<Element> _elements = <Element>[
  Element(
    DateTime(2022,4,15),
    'Pinterest',
    'assets/images/icons8-pinterest-100.png',
      'NGN 1000'
  ),
  Element(
      DateTime(2022,4,15),
      'Spotify',
      'assets/images/icons8-free-audio-and-music-with-advertisement-on-spotify-100.png',
    'NGN 900'
  ),
  Element(
      DateTime(2022,4,16),
      'AliExpress',
      'assets/images/icons8-aliexpress-100.png',
    'NGN 5000'
  ),
  Element(
      DateTime(2022,4,16),
      'Amazon',
      'assets/images/icons8-amazon-48.png',
    'NGN 20,000'
  ), Element(
      DateTime(2022,4,17),
      'Amazon',
      'assets/images/icons8-amazon-48.png',
    'NGN 7000'
  ), Element(
      DateTime(2022,4,17),
      'Pinterest',
      'assets/images/icons8-pinterest-100.png',
    'NGN 300'
  ), Element(
      DateTime(2022,4,17),
      'Linkedin',
      'assets/images/icons8-linkedin-48.png',
      'NGN 900'
  ), Element(
      DateTime(2022,4,18),
      'Pinterest',
      'assets/images/icons8-pinterest-100.png',
      'NGN 900'
  ), Element(
      DateTime(2022,4,18),
      'Amazon',
      'assets/images/icons8-amazon-48.png',
      'NGN 2000'
  ), Element(
      DateTime(2022,4,19),
      'Spotify',
      'assets/images/icons8-free-audio-and-music-with-advertisement-on-spotify-100.png',
      'NGN 900'),
    Element(
      DateTime(2022,4,20),
      'Pinterest',
      'assets/images/icons8-pinterest-100.png',
        'NGN 500'),
    Element(
      DateTime(2022,4,20),
        'Spotify',
        'assets/images/icons8-free-audio-and-music-with-advertisement-on-spotify-100.png',
        'NGN 900'),
     Element(
      DateTime(2022,4,21),
         'Linkedin',
         'assets/images/icons8-linkedin-48.png',
         'NGN 1000'),
     Element(
      DateTime(2022,4,21),
         'Spotify',
         'assets/images/icons8-free-audio-and-music-with-advertisement-on-spotify-100.png',
             'NGN 900'),
      Element(
      DateTime(2022,4,22),
          'Amazon',
          'assets/images/icons8-amazon-48.png',
          'NGN 9000'),
];

class TransationList extends StatelessWidget {
  const TransationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StickyGroupedListView<Element, DateTime>(
        elements: _elements,
        order: StickyGroupedListOrder.ASC,
        groupBy: (Element element) =>
        DateTime(element.date.year, element.date.month, element.date.day),
        groupComparator: (DateTime value1, DateTime value2) =>
        value2.compareTo(value1),
        itemComparator: (Element element1, Element element2) =>
        element1.date.compareTo(element2.date),
        floatingHeader: true,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        groupSeparatorBuilder: (Element element) =>
        Container(
          height: 50,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 120,
              decoration: BoxDecoration(
                color: kYellowColor,
                border: Border.all(
                  color: kYellowColor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
              child: Text(
                '${element.date.day}.${element.date.month}.${element.date.year}',
                textAlign: TextAlign.center,
              ),),
            ),
          ),
        ),
      itemBuilder: (_, Element element) =>
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            elevation: 2.0,
            margin: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 6.0
            ),
            child: Container(
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Image.asset(element.image),
                ),
                title: Text(element.name),
                trailing: Text(element.price),
              ),
            ),
          ),
    );
  }
}

