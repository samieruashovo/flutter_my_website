import 'package:flutter/material.dart';
import 'package:personal_web/constants/colors.dart';
import 'package:personal_web/models/social_icons.dart';
import 'package:personal_web/models/url_helper.dart';

class SocialMediaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      margin: const EdgeInsets.only(left: 32),
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor.withOpacity(0.3), width: 1.4),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://github.com/samieruashovo');
            },
            child: Icon(
              SocialIcons.github,
              color: kPrimaryColor.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                'https://tinyurl.com/samierlinkedin',
              );
            },
            child: Icon(
              SocialIcons.linkedin,
              color: kPrimaryColor.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                "mailto:samieruashovo@gmail.com?subject=Hello%20DKB",
              );
            },
            child: Icon(
              SocialIcons.envelope,
              color: kPrimaryColor.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://twitter.com/_sh0v0_');
            },
            child: Icon(
              SocialIcons.twitter,
              color: kPrimaryColor.withOpacity(0.75),
            ),
          ),
          // SizedBox(height: 30),
          // InkWell(
          //   hoverColor: Colors.transparent,
          //   splashColor: Colors.transparent,
          //   onTap: () {
          //     UrlHelper.launchUrl('https://www.instagram.com/_sh0v0_/');
          //   },
          //   child: Icon(
          //     SocialIcons.instagram,
          //     color: kPrimaryColor.withOpacity(0.75),
          //   ),
          // ),
          //           SizedBox(height: 30),
          // InkWell(
          //   hoverColor: Colors.transparent,
          //   splashColor: Colors.transparent,
          //   onTap: () {
          //     UrlHelper.launchUrl(
          //       'https://web.facebook.com/ErfanRahmati',
          //     );
          //   },
          //   child: Icon(
          //     SocialIcons.facebook,
          //     color: kPrimaryColor.withOpacity(0.75),
          //   ),
          // ),
          // SizedBox(height: 30),
          // InkWell(
          //   hoverColor: Colors.transparent,
          //   splashColor: Colors.transparent,
          //   onTap: () {
          //     UrlHelper.launchUrl(
          //         'https://api.whatsapp.com/send?phone=0989397288246');
          //   },
          //   child: Icon(
          //     SocialIcons.whatsapp,
          //     color: kPrimaryColor.withOpacity(0.75),
          //   ),
          // ),
        ],
      ),
    );
  }
}
