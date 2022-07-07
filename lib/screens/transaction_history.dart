import '../utils/constants.dart' show kCustomlightBlue, kYellowColor;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class Element {
  DateTime date;
  String name;
  Widget image;
  String price;
  Element(
      {required this.date,
      required this.name,
      required this.image,
      required this.price});
}

List<Element> _elements = [
  Element(
      date: DateTime(1, 7, 2022),
      image: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.white.withOpacity(0.3),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      name: 'Mise',
      price: '-300 points'),
  Element(
      date: DateTime(1, 7, 2022),
      image: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.white.withOpacity(0.3),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      name: 'Caroline',
      price: '-500 points'),
  Element(
      date: DateTime(1, 7, 2022),
      image: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.white.withOpacity(0.3),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      name: 'kiki',
      price: '+300 points'),
];

class TransationList extends StatelessWidget {
  const TransationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StickyGroupedListView<Element, DateTime>(
      elements: _elements,
      order: StickyGroupedListOrder.ASC,
      groupBy: (Element element) =>
          DateTime(element.date.day, element.date.month, element.date.year),
      groupComparator: (DateTime value1, DateTime value2) =>
          value2.compareTo(value1),
      itemComparator: (Element element1, Element element2) =>
          element1.date.compareTo(element2.date),
      floatingHeader: true,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      groupSeparatorBuilder: (Element element) => Container(
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: 120,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              // border: Border.all(
              //   color: kYellowColor,
              // ),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '${element.date.day}/${element.date.month}/${element.date.year}',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      itemBuilder: (_, Element element) => Card(
        color: kCustomlightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        elevation: 2.0,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            leading: element.image,
            title: Text(element.name),
            trailing: Text(element.price),
          ),
        ),
      ),
    );
  }
}
