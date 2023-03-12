import 'package:flutter/material.dart';

import 'HomeBanner.dart';
import 'LconInfo.dart';
import 'Projects.dart';
import 'Recommendation.dart';


class MainSectionScreen extends StatefulWidget {
  const MainSectionScreen({Key? key}) : super(key: key);

  @override
  State<MainSectionScreen> createState() => _MainSectionScreenState();
}
class _MainSectionScreenState extends State<MainSectionScreen> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          HomeBanner(),
          IconInfo(),
          Projects(),
          Recommendations(),
        ],
      ),
    );
  }
}