import 'package:flutter/material.dart';
import 'package:portfolio_aman/models/methods.dart';
import 'package:portfolio_aman/widgets/feature_project.dart';
import 'package:portfolio_aman/widgets/main_title.dart';

class ProjectScreen extends StatefulWidget {
  
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  Method method = Method();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const MainTitle(
          number: "04.",
          text: "Things I've Built",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/project1.jpg",
          ontab: () {
            method
                .launchURL("https://github.com/oops-aman/Flutter-Meeting-App");
          },
          projectDesc:
              "A Mobile app for both Android and IOS. Create or Join a meeting, share screen, chat with other participants, Raise hands, Change display name while joining. The purpose of this project is to learn authentication and playing with APIs.",
          projectTitle: "Meeting App",
          tech1: "Flutter",
          tech2: "Jitsi Meet",
          tech3: "Firebase",
        ),
        FeatureProject(
          imagePath: "assets/project2.jpg",
          ontab: () {
            method
                .launchURL("https://github.com/oops-aman/Instagram-Clone");
          },
          projectDesc:
              "A Mobile app for both Android and IOS. Features like instagram, Posting pictures, commenting on the post, Like the post, follow/unfollow any user, Sign in with email and password. The purpose of this project is to learn database concept and developing APIs for the functionalities.",
          projectTitle: "Full Stack Instagram Clone",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Firebase",
        ),
      ],
    );
  }
}
