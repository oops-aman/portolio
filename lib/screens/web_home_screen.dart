import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_aman/models/methods.dart';
import 'package:portfolio_aman/screens/about_screen.dart';
import 'package:portfolio_aman/screens/projects_screen.dart';
import 'package:portfolio_aman/screens/skills_screen.dart';
import 'package:portfolio_aman/screens/work_screen.dart';
import 'package:portfolio_aman/widgets/app_bar_title.dart';
import 'package:portfolio_aman/widgets/custom_text.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({super.key});

  @override
  State<WebHomeScreen> createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  Method method = Method();
  late AutoScrollController _autoScrollController = AutoScrollController();
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpaned != false
                ? setState(
                    () {
                      isExpaned = false;
                    },
                  )
                : {}
            : isExpaned != true
                ? setState(() {
                    isExpaned = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 16, 27),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //navigation bar
            Container(
              height: size.height * 0.14,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    IconButton(
                        icon: const Icon(
                          Icons.change_history,
                          size: 32.0,
                          color: Color(0xff64FFDA),
                        ),
                        onPressed: () {}),
                    const Spacer(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DefaultTabController(
                          length: 5,
                          child: TabBar(
                            indicatorColor: Colors.transparent,
                            onTap: (index) async {
                              _scrollToIndex(index);
                            },
                            tabs: const [
                              Tab(
                                child: AppBarTitle(
                                  text: 'About',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Timeline',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Skills',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Project',
                                ),
                              ),
                              Tab(
                                child: AppBarTitle(
                                  text: 'Contact Me',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Card(
                        elevation: 4.0,
                        color: const Color(0xff64FFDA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(0.85),
                          height: size.height * 0.07,
                          width: size.height * 0.20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff0A192F),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: TextButton(
                            onPressed: () {
                              method.launchURL(
                                  "https://drive.google.com/file/d/1XGXUpJUgdmx7vRUPoVz-VdUF__T538Az/view?usp=drive_link");
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(
                                "Resume",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff64FFDA),
                                  fontWeight: FontWeight.w800,
                                ),
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

            Row(
              children: [
                Container(
                  width: size.width * 0.09,
                  height: size.height - 82,
                  child: Column(
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.github),
                        color: const Color.fromARGB(255, 168, 176, 201),
                        iconSize: 18.0,
                        onPressed: () {
                          method.launchURL("https://github.com/oops-aman");
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.twitter),
                        color: const Color.fromARGB(255, 168, 176, 201),
                        iconSize: 18.0,
                        onPressed: () {
                          method.launchURL("https://twitter.com/im_amanS19");
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.instagram),
                        color: const Color.fromARGB(255, 168, 176, 201),
                        onPressed: () {
                          method.launchURL(
                              "https://www.instagram.com/aman_s.19");
                        },
                        iconSize: 18.0,
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.linkedin),
                        color: const Color.fromARGB(255, 168, 176, 201),
                        onPressed: () {
                          method.launchURL(
                              "https://www.linkedin.com/in/aman-saurav-6ab61120b/");
                        },
                        iconSize: 18.0,
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.hackerrank),
                        color: const Color.fromARGB(255, 168, 176, 201),
                        onPressed: () {
                          method.launchURL(
                              "https://www.hackerrank.com/oops_aman");
                        },
                        iconSize: 18.0,
                      ),
                      IconButton(
                        icon: Image.asset("assets/lc2.png",),
                        color: const Color.fromARGB(255, 168, 176, 201),
                        onPressed: () {
                          method
                              .launchURL("https://www.leetcode.com/oops_aman");
                        },
                        iconSize: 2.0,
                      ),
                      IconButton(
                        icon: const Icon(Icons.call),
                        color: const Color.fromARGB(255, 168, 176, 201),
                        iconSize: 18.0,
                        onPressed: () {
                          method.launchCaller();
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.mail),
                        color: const Color.fromARGB(255, 168, 176, 201),
                        iconSize: 18.0,
                        onPressed: () {
                          method.launchEmail();
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          height: size.height * 0.20,
                          width: 2,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: size.height - 82,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: CustomScrollView(
                        controller: _autoScrollController,
                        slivers: [
                          SliverList(
                            delegate: SliverChildListDelegate(
                              [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: size.height * .06,
                                    ),
                                    const CustomText(
                                      text: "Hi, This is",
                                      textsize: 16.0,
                                      color: Color(0xff41FBDA),
                                      letterSpacing: 3.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    const CustomText(
                                      text: "Aman Saurav.",
                                      textsize: 68.0,
                                      color: Color(0xffCCD6F6),
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 0.10,
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    CustomText(
                                      text: "Exploring and Building New Things.",
                                      textsize: 56.0,
                                      color: const Color(0xffCCD6F6)
                                          .withOpacity(0.6),
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.10,
                                    ),
                                    SizedBox(
                                      height: size.height * .04,
                                    ),
                                    Wrap(
                                      children: [
                                        Text(
                                          "I'm a final year undergrad posessing good \nproblem-solving abilities and coding skills. \nCurrently, I am learning CI/CD Automation using Jenkins and DevOps tools.",
                                          style: GoogleFonts.workSans(
                                            color: Colors.grey,
                                            fontSize: 16.0,
                                            letterSpacing: 2.75,
                                            wordSpacing: 0.75,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: size.height * .12,
                                    ),

                                    //get in tuch text
                                    InkWell(
                                      onTap: () {
                                        method.launchEmail();
                                      },
                                      hoverColor: const Color(0xff64FFDA)
                                          .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(4.0),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: size.height * 0.09,
                                        width: size.width * 0.14,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xff64FFDA),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        child: const Text(
                                          "Get In Touch",
                                          style: TextStyle(
                                            color: Color(0xff64FFDA),
                                            letterSpacing: 2.75,
                                            wordSpacing: 1.0,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: size.height * 0.20,
                                    ),
                                  ],
                                ),
                                _wrapScrollTag(
                                  index: 0,
                                  child: const AboutScreen(),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                _wrapScrollTag(
                                  index: 1,
                                  child: const WorkScreen(),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                _wrapScrollTag(
                                  index: 2,
                                  child: const SkillsScreen(),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                _wrapScrollTag(
                                  index: 3,
                                  child: const ProjectScreen(),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                _wrapScrollTag(
                                  index: 4,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: size.height * 0.68,
                                        width:
                                            MediaQuery.of(context).size.width -
                                                100,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const CustomText(
                                              text: "05. What's Next?",
                                              textsize: 16.0,
                                              color: Color(0xff41FBDA),
                                              letterSpacing: 3.0,
                                              fontWeight: FontWeight.w400,
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
                                            const SizedBox(
                                              height: 16.0,
                                            ),
                                            Wrap(
                                              children: [
                                                Text(
                                                  "Although I'm currently looking for SDE opportunities, my inbox is \nalways open. Whether you have a question or anything, I'll try my \nbest to get back to you! Also, you can reach out to me through my socials.",
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.workSans(
                                                    color: Colors.white
                                                        .withOpacity(0.4),
                                                    letterSpacing: 0.75,
                                                    fontSize: 17.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 32.0,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                method.launchEmail();
                                              },
                                              child: Card(
                                                elevation: 4.0,
                                                color: const Color(0xff64FFDA),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                                child: Container(
                                                  margin: const EdgeInsets.all(
                                                      0.85),
                                                  height: size.height * 0.09,
                                                  width: size.width * 0.10,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xff0A192F),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      6.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 8.0,
                                                    ),
                                                    child: Text(
                                                      "Say Hello",
                                                      style:
                                                          GoogleFonts.workSans(
                                                        color: const Color(
                                                            0xff64FFDA),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                6,
                                        width:
                                            MediaQuery.of(context).size.width -
                                                100,
                                        //color: Colors.white,
                                        child: Text(
                                          "Designed & Built by Aman Saurav 💙 Flutter",
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            letterSpacing: 1.75,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.07,
                  height: MediaQuery.of(context).size.height - 82,
                  //color: Colors.orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotatedBox(
                        quarterTurns: 45,
                        child: Text(
                          "amansaurav95@gmail.com",
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.6),
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16.0,
                        ),
                        child: Container(
                          height: 100,
                          width: 2,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
