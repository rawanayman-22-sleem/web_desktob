import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../model/recommmmendation.dart';


class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultpadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultpadding / 2),
            child: Text("Recommendations",
                style: Theme.of(context).textTheme.headline6),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  recommendation.length,
                      (index) => Padding(
                    padding: EdgeInsets.only(
                      right: defaultpadding,
                    ),
                    child: Container(
                      width: 400,
                      color: secondarycolor,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              recommendation[index].Name!,
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            subtitle: Text(
                              recommendation[index].Source!,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            leading: CircleAvatar(
                              backgroundColor: primarycolor,
                              radius: 30,
                              backgroundImage: AssetImage(
                                  "${recommendation[index].Image}"),
                            ),
                          ),
                          SizedBox(
                            height: defaultpadding / 2,
                          ),
                          Text(
                            recommendation[index].Text!,
                            maxLines: 4,
                            style: TextStyle(height: 1.5),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}