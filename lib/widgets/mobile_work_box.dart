import 'package:flutter/material.dart';
import 'package:portfolio_aman/widgets/work_custom_data.dart';

class MobileWorkBox extends StatelessWidget {
  const MobileWorkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "Software Engineering Intern, Infineon Technologies India",
          subTitle:
              "Working as Software Engineering Intern at Infineon Technologies.",
          duration: "July' 2023 - Present",
        ),
        WorkCustomData(
          title: "Mobile Application Developer Intern, WellCure Infotech",
          subTitle:
              "Worked as Mobile Application Developer Intern at WellCure Infotech.",
          duration: "Jan' 2023 - Mar' 2023",
        ),
        WorkCustomData(
          title: "Software Engineering Intern, Evercons Technologies",
          subTitle:
              "Worked as Software Engineering Intern at Evercons Technologies.",
          duration: "Nov' 2022 - Jan' 2023",
        ),
        WorkCustomData(
          title: "National Institute of Technology, Sikkim",
          subTitle:
              "Pursuing Bachelor's Degree in Computer Science and Engineering \nat National Institute of Technology, Sikkim",
          duration: "Dec' 2020 - Present",
        ),
        WorkCustomData(
          title: "XIIth, D.A.V. Public School",
          subTitle:
              "Passed the 12th boards from Central Board of Secondary Education attaining 94%.",
          duration: "April' 2018 - March' 2020",
        ),
        WorkCustomData(
          title: "Xth, D.A.V. Public School",
          subTitle:
              "Cleared the 10th standard from Central Board of Secondary Education attaining 90.2%.",
          duration: "April' 2006 to March' 2018",
        ),
        WorkCustomData(
          title: "Birthday",
          subTitle: "Took birth on 25th of March, 2003.",
          duration: "25th March 2003",
        ),
      ],
    );
  }
}