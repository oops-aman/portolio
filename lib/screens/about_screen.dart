import 'package:flutter/material.dart';
import 'package:portfolio_aman/widgets/custom_text.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: const Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1.2,
      width: size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height * 0.9,
            width: size.width / 2 - 100,
            child: Column(
              children: [
                //About me title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomText(
                      text: "01.",
                      letterSpacing: 0.10,
                      textsize: 20.0,
                      color: Color(0xff61F9D5),
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    const CustomText(
                      letterSpacing: 0.10,
                      text: "About Me",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: const Color(0xff303C55),
                    ),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //About me desc
                const Wrap(
                  children: [
                    CustomText(
                      text:
                          "Hello! I'm Aman, a Tech Enthusiast based in Ravangla, Sikkim.\n\nI enjoy creating things that live on the internet, whether that be applications, or anything in between. My goal is to always build products that provide pixel-perfect, performant experiences.\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      letterSpacing: 0.75,
                      fontWeight: FontWeight.w400,
                    ),
                    CustomText(
                      text:
                          "Shortly currently, I am pursuing my Bachlor's degree in Computer Science and Engineering at National Institute of Technology. I love solving Data Structures based problems and building interesting projects on a daily basis. I have solved over 500+ problems on LeetCode and achieved 6 Stars on HackerRank in problem solving.\n Currently, I am learning DevOps\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      letterSpacing: 0.75,
                      fontWeight: FontWeight.w400,
                    ),
                    CustomText(
                      text:
                          "Here are a few technologies I've been working with recently:\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.75,
                    ),
                  ],
                ),

                Container(
                  height: size.height * 0.15,
                  width: size.width,
                  child: Wrap(
                    children: [
                      Container(
                        width: size.width * 0.20,
                        height: size.height * 0.15,
                        child: Column(
                          children: [
                            technology(context, "C Porgramming"),
                            technology(context, "Python"),
                            technology(context, "Flutter"),
                            technology(context, "Git/Github"),
                            technology(context, "Jenkins"),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.15,
                        height: size.height * 0.15,
                        child: Column(
                          children: [
                            technology(context, "C/C++"),
                            technology(context, "Dart"),
                            technology(context, "SQL"),
                            technology(context, "Perl"),
                            technology(context, "Kubernetes"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          //Profile Image
          Expanded(
            child: Container(
              height: size.height / 1.5,
              width: size.width / 2 - 150,
              // color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: size.height * 0.15,
                    left: size.width * 0.13,
                    child: Card(
                      color: const Color(0xff61F9D5),
                      child: Container(
                        margin: const EdgeInsets.all(3),
                        height: size.height / 2,
                        width: size.width / 4.7,
                        color: const Color(0xff0A192F),
                      ),
                    ),
                  ),
                  const CustomImageAnimation(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomImageAnimation extends StatefulWidget {
  const CustomImageAnimation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomImageAnimationState createState() => _CustomImageAnimationState();
}

class _CustomImageAnimationState extends State<CustomImageAnimation> {
  Color customImageColor = const Color(0xff61F9D5).withOpacity(0.5);
  // ignore: unused_field
  int _enterCounter = 0;
  // ignore: unused_field
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      customImageColor = const Color(0xff61F9D5).withOpacity(0.5);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width / 4.6,
            decoration: BoxDecoration(
              color: Colors.black54,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
            ),
            
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/profile.jpg"),
            ),
          ),
          Container(
            height: size.height / 2,
            width: size.width / 4.6,
            color: customImageColor,
          ),
        ],
      ),
    );
  }
}
