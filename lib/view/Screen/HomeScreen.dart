import 'package:flutter/material.dart';
import '../../constant.dart';
import '../Widgets/mainsection/MainScreen.dart';
import '../Widgets/sidemenu/SideMenuScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0, minWidth: 20),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child:
                    Container(color: black, child: SideMenuSection())),
                Expanded(flex: 7, child: Container(child: MainSectionScreen())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}