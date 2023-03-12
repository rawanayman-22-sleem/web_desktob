import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant.dart';


class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultpadding / 2),
          child: Text(
            "G-o-a-l-s",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoals(textGoal: "Planning Stage"),
        buildGoals(textGoal: "Development"),
        buildGoals(textGoal: "Execution Phase"),
        buildGoals(textGoal: "Planning Stage"),
      ],
    );
  }
}
buildGoals({required String textGoal}) {
  return Padding(
    padding: const EdgeInsets.all(defaultpadding / 2),
    child: Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        SizedBox(
          width: defaultpadding / 2,
        ),
        Text("$textGoal")
      ],
    ),
  );
}