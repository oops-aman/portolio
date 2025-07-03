import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_aman/widgets/custom_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 1.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                text: "03.",
                textsize: 20.0,
                color: Color(0xff61F9D5),
                letterSpacing: 0.10,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                width: 12.0,
              ),
              const CustomText(
                text: "Skills",
                textsize: 26.0,
                letterSpacing: 0.10,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: size.width * 0.01,
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "C Programming",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.16,
                          ),
                          Text(
                            "90.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.9,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "C++",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.24,
                          ),
                          Text(
                            "90.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.9,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                      SizedBox(
                        width: size.width * 0.002,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Python",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.22,
                          ),
                          Text(
                            "70.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.7,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Dart",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.24,
                          ),
                          Text(
                            "80.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.8,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                      SizedBox(
                        width: size.width * 0.002,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Flutter",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.22,
                          ),
                          Text(
                            "85.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.85,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Firebase",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.21,
                          ),
                          Text(
                            "80.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.8,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                      SizedBox(
                        width: size.width * 0.002,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "DSA",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.24,
                          ),
                          Text(
                            "85.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.85,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "SQL",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.24,
                          ),
                          Text(
                            "80.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.8,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                      SizedBox(
                        width: size.width * 0.002,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Git/Github",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.20,
                          ),
                          Text(
                            "95.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.95,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "OOPS",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.23,
                          ),
                          Text(
                            "90.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.9,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                      SizedBox(
                        width: size.width * 0.002,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Jenkins",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.22,
                          ),
                          Text(
                            "60.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.6,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Perl",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.24,
                          ),
                          Text(
                            "60.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.6,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                      SizedBox(
                        width: size.width * 0.002,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Docker",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.22,
                          ),
                          Text(
                            "50.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.5,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Kubernetes",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.19,
                          ),
                          Text(
                            "40.0%",
                            style: GoogleFonts.workSans(
                              color: const Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 3,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.4,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        barRadius: const Radius.circular(10),
                        progressColor: const Color(0xff61F9D5),
                      ),
                      SizedBox(
                        width: size.width * 0.002,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
