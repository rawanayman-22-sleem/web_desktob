import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../model/project.dart';



class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultpadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultpadding / 4),
            child: Text("Our Projects",
                style: Theme.of(context).textTheme.headline6),
          ),
          buildGridView(
              GitemCount: projectlist.length,
              GitemBuilder: (context, index) {
                return Container(
                  color: secondarycolor,
                  padding: EdgeInsets.all(defaultpadding),
                  child: Column(
                    children: [
                      Image.asset(
                        "${projectlist[index].Image}",
                      ),
                      SizedBox(
                        height: defaultpadding,
                      ),
                      Text(
                        "${projectlist[index].Title}",
                        maxLines: 2,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(
                        height: defaultpadding,
                      ),
                      Text(
                        "${projectlist[index].Descraption}",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(height: 1.7),
                      ),
                      SizedBox(
                        height: defaultpadding,
                      ),
                      Text(
                        "More Info..",
                        style: TextStyle(color: primarycolor),
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
buildGridView({required int GitemCount, var GitemBuilder}) {
  return GridView.builder(
    shrinkWrap: true,
    itemCount: GitemCount,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: defaultpadding,
        crossAxisSpacing: defaultpadding,
        childAspectRatio: 0.75),
    itemBuilder: GitemBuilder,
  );
}