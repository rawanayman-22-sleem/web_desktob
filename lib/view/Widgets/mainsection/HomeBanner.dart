import 'package:flutter/material.dart';
import '../../../constant.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: black.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(defaultpadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Build a Greate Future   \n For Fll of US!  ",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      backgroundColor: black.withOpacity(0.1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: primarycolor,
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20)),
                        child: Text(
                          "CONTACT US",
                          style: TextStyle(color: black),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}