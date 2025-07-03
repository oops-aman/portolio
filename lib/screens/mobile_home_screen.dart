import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_aman/models/methods.dart';
import 'package:portfolio_aman/screens/mobile_skills.dart';
import 'package:portfolio_aman/widgets/custom_text.dart';
import 'package:portfolio_aman/widgets/mobile_project.dart';
import 'package:portfolio_aman/widgets/mobile_work.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: const Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Text(
          text,
          style: GoogleFonts.workSans(
            color: const Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 16, 27),
      endDrawer: Drawer(
        elevation: 6.0,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 9, 16, 27),
              ),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage(
                  "assets/profile.jpg",
                ),
              ),
              accountName: Text(
                "Aman Saurav",
              ),
              accountEmail: Text(
                "amansaurav95@gmail.com",
              ),
            ),
            ListTile(
              title: const Text(
                "Github",
              ),
              leading: IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                color: const Color.fromARGB(255, 168, 176, 201),
                iconSize: 18.0,
                onPressed: () {
                  method.launchURL("https://github.com/oops-aman");
                },
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: const FaIcon(FontAwesomeIcons.twitter),
                color: const Color.fromARGB(255, 168, 176, 201),
                iconSize: 18.0,
                onPressed: () {
                  method.launchURL("https://twitter.com/im_amanS19");
                },
              ),
              title: const Text(
                "Twitter",
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                color: const Color.fromARGB(255, 168, 176, 201),
                onPressed: () {
                  method.launchURL("https://www.instagram.com/aman_s.19");
                },
                iconSize: 18.0,
              ),
              title: const Text(
                "Instagram",
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                color: const Color.fromARGB(255, 168, 176, 201),
                onPressed: () {
                  method.launchURL(
                      "https://www.linkedin.com/in/aman-saurav-6ab61120b/");
                },
                iconSize: 18.0,
              ),
              title: const Text(
                "LinkedIn",
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: const FaIcon(FontAwesomeIcons.hackerrank),
                color: const Color.fromARGB(255, 168, 176, 201),
                onPressed: () {
                  method.launchURL("https://www.hackerrank.com/oops_aman");
                },
                iconSize: 18.0,
              ),
              title: const Text(
                "HackerRank",
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Image.asset("assets/lc2.png"),
                color: const Color.fromARGB(255, 168, 176, 201),
                onPressed: () {
                  method.launchURL("https://www.leetcode.com/oops_aman");
                },
                iconSize: 18.0,
              ),
              title: const Text(
                "LeetCode",
              ),
            ),
            const Expanded(
              child: Text(
                "Version 1.0.0",
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff0A192F),
        elevation: 0.0,
        title: IconButton(
          icon: const Icon(
            Icons.change_history,
            size: 32.0,
            color: Color(0xff64FFDA),
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.08,
              ),
              const CustomText(
                text: "Hi, This is",
                textsize: 16.0,
                color: Color(0xff41FBDA),
                letterSpacing: 3.0,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const CustomText(
                text: "Aman Saurav.",
                textsize: 52.0,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w900,
                letterSpacing: 0.10,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomText(
                text: "Exploring and Building New Things.",
                textsize: 42.0,
                color: const Color(0xffCCD6F6).withOpacity(0.6),
                fontWeight: FontWeight.w700,
                letterSpacing: 0.10,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Wrap(
                  children: [
                    Text(
                      "I'm a final year undergrad posessing good problem-solving abilities and coding skills. Currently, I am learning CI/CD Automation using Jenkins and DevOps tools.",
                      style: GoogleFonts.workSans(
                        color: Colors.grey,
                        fontSize: 15.0,
                        letterSpacing: 2.75,
                        wordSpacing: 0.75,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: const Color(0xff64FFDA),
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(0.75),
                  height: 56.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xff0A192F),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      method.launchEmail();
                    },
                    hoverColor: Colors.green,
                    child: Text(
                      "Get In Touch",
                      style: GoogleFonts.workSans(
                        color: const Color(0xff64FFDA),
                        letterSpacing: 2.75,
                        wordSpacing: 1.0,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  width: size.width,
                  //color: Colors.purple,
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
                            text: "About Me",
                            textsize: 26.0,
                            letterSpacing: 0.10,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
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
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                          CustomText(
                            text:
                                "Shortly currently, I am pursuing my Bachlor's degree in Computer Science and Engineering at National Institute of Technology. I love solving Data Structures based problems and building interesting projects on a daily basis. I have solved over 500+ problems on LeetCode and achieved 6 Stars on HackerRank in problem solving.\n Currently, I am learning DevOps tools.\n",
                            textsize: 16.0,
                            color: Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                          CustomText(
                            text:
                                "Here are a few technologies I've been working with recently:\n\n",
                            textsize: 16.0,
                            color: Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: size.height * 0.06,
                      ),

                      Container(
                        width: size.width,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                technology(context, "C Porgramming"),
                            technology(context, "Python"),
                            technology(context, "Flutter"),
                            technology(context, "Git/Github"),
                            technology(context, "Jenkins"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                technology(context, "C/C++"),
                            technology(context, "Dart"),
                            technology(context, "SQL"),
                            technology(context, "Perl"),
                            technology(context, "Kubernetes"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.08,
              ),

              //Image
              Center(
                child: Container(
                  height: size.height * 0.6,
                  width: size.width * 0.7,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        right: 20,
                        left: 50.0,
                        child: Card(
                          color: const Color(0xff61F9D5),
                          child: Container(
                            margin: const EdgeInsets.all(2.75),
                            height: size.height * 0.45,
                            width: size.width * 0.66,
                            color: const Color(0xff0A192F),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.5,
                        width: size.width * 0.6,
                        child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/profile.jpg"),
                        ),
                      ),
                      Container(
                        height: size.height * 0.5,
                        width: size.width * 0.6,
                        color: const Color(0xff61F9D5).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(
                    text: "02.",
                    textsize: 20.0,
                    letterSpacing: 0.10,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const CustomText(
                    text: "Timeline",
                    textsize: 26.0,
                    letterSpacing: 0.10,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.08,
                    height: 1.10,
                    color: const Color(0xff303C55),
                  ),
                ],
              ),

              const MobileWork(),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(
                    text: "03.",
                    textsize: 20.0,
                    letterSpacing: 0.10,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const CustomText(
                    letterSpacing: 0.10,
                    text: "Skills",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.04,
                    height: 1.10,
                    color: const Color(0xff303C55),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              const MobileSkills(),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(
                    text: "04.",
                    textsize: 20.0,
                    letterSpacing: 0.10,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const CustomText(
                    letterSpacing: 0.10,
                    text: "Projects",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.04,
                    height: 1.10,
                    color: const Color(0xff303C55),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              MobileProject(
                ontab: () {
                  method.launchURL(
                      "https://github.com/oops-aman/Flutter-Meeting-App");
                },
                image: "assets/project1.jpg",
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              MobileProject(
                ontab: () {
                  method.launchURL(
                      "https://github.com/oops-aman/Instagram-Clone");
                },
                image: "assets/project2.jpg",
              ),
              SizedBox(
                height: size.height * 0.10,
              ),
              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  //height: size.aspectRatio,
                  width: size.width,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        fontWeight: FontWeight.w700,
                        text: "05. What's Next?",
                        textsize: 16.0,
                        color: Color(0xff41FBDA),
                        letterSpacing: 3.0,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const CustomText(
                        text: "Get In Touch",
                        textsize: 42.0,
                        color: Colors.white,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            "Although I'm currently looking for SDE opportunities, my inbox is always open. Whether you have a question or anything, I'll try my best to get back to you! Also, you can reach out to me through my socials.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              letterSpacing: 0.75,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      Card(
                        elevation: 4.0,
                        color: const Color(0xff64FFDA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(0.85),
                          height: size.height * 0.10,
                          width: size.width * 0.30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff0A192F),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: TextButton(
                              onPressed: () {
                                method.launchEmail();
                              },
                              child: Text(
                                "Say Hello",
                                style: GoogleFonts.workSans(
                                  color: const Color(0xff64FFDA),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),

              //Footer
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                //color: Colors.white,
                child: Text(
                  "Designed & Built by Aman Saurav 💙 Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.4),
                    letterSpacing: 1.75,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
