import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_aman/widgets/mobile_work_box.dart';

class MobileWork extends StatefulWidget {
  const MobileWork({super.key});

  @override
  State<MobileWork> createState() => _MobileWorkState();
}

class _MobileWorkState extends State<MobileWork> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1.5,
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: size.height * 1.2,
                  //color: Colors.indigo,
                  child: Stack(
                    children: [
                      const Center(
                        child: VerticalDivider(
                          color: Color(0xff64FFDA),
                          thickness: 1.75,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.pink,
                                child: FaIcon(FontAwesomeIcons.laptopCode,
                                    color: Colors.white),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.pink,
                                child: FaIcon(FontAwesomeIcons.laptopCode,
                                    color: Colors.white),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.pink,
                                child: FaIcon(FontAwesomeIcons.laptopCode,
                                    color: Colors.white),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                child:
                                    FaIcon(Icons.school, color: Colors.white),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.brown,
                                child: FaIcon(Icons.school_rounded,
                                    color: Colors.white),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.deepOrange,
                                child: FaIcon(Icons.school_rounded,
                                    color: Colors.white),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.yellow,
                                child: FaIcon(FontAwesomeIcons.cakeCandles,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: size.height * 1.2,
                  child: const MobileWorkBox(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
