import 'package:flutter/material.dart';
class InFo extends StatelessWidget {
  const InFo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildConyactInfo(Title: 'Country', subTitle: 'EGY'),
        buildConyactInfo(Title: 'Address', subTitle: 'el obour'),
        buildConyactInfo(Title: 'Email', subTitle: 'remaa4593@gmail.com'),
        buildConyactInfo(Title: 'WebSite', subTitle: 'https//rw2n.com'),
        buildConyactInfo(Title: 'Mobile', subTitle: '01018440919'),

      ],
    );
  }
}
Padding buildConyactInfo({required String Title, required String subTitle}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$Title",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "$subTitle",
        ),
      ],
    ),
  );
}