import 'package:flutter/material.dart';
import '../../../constant.dart';


class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultpadding * 3 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildIconInfo(
              icon: Icons.supervisor_account,
              numText: '+44',
              texttitle: 'Clients',
              context: context),
          BuildIconInfo(
              icon: Icons.location_on,
              numText: '200+',
              context: context,
              texttitle: 'Projects'),
          BuildIconInfo(
              icon: Icons.public,
              numText: '40+',
              context: context,
              texttitle: 'Countries'),
          BuildIconInfo(
              icon: Icons.star,
              numText: '14k+',
              context: context,
              texttitle: 'Stars'),  ],
      ),
    );
  }
}

BuildIconInfo(  {
      required IconData icon,
      required String numText,
      required String texttitle,
      required BuildContext context}) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.white,
        size: 40,
      ),
      Text(
        "$numText",
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: primarycolor, fontSize: 40),
      ),
      Text(
        "$texttitle",
        style: Theme.of(context).textTheme.subtitle2,
      ),
    ],
  );
}