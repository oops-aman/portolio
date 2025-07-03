import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MobileSkills extends StatefulWidget {
  const MobileSkills({super.key});

  @override
  State<MobileSkills> createState() => _MobileSkillsState();
}

class _MobileSkillsState extends State<MobileSkills> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 2.0,
      child: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "C Programming",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "C++",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Python",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 0.7,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dart",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Flutter",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 0.85,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Firebase",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Data Structures & Algorithms",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 0.85,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SQL",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Git/Github",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 0.95,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "OOPS",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jenkins",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Perl",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Docker",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kubernetes",
                        style: GoogleFonts.workSans(
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
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
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * 0.8,
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
      ),
    );
  }
}
