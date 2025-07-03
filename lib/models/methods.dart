import 'package:url_launcher/url_launcher.dart';

class Method {
  launchURL(String link) async {
    var url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    var url = Uri.parse("tel:7384128688");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    var url3 = Uri.parse("mailto:amansaurav2211@gmail.com");
    if (await canLaunchUrl(url3)) {
      await launchUrl(url3);
    } else {
      throw 'Could not launch';
    }
  }
}
