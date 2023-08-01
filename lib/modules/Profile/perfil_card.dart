import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/contants.dart';
import '../../shared/app_images.dart';

class PerfilCard extends StatelessWidget {
  const PerfilCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kCardColor,
      child: Container(
        padding: const EdgeInsets.all(23),
        height: 320,
        width: 401,
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: kBackgroundColor,
              maxRadius: 58,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipOval(
                  child: Image.network(
                      "https://media.licdn.com/dms/image/D4D03AQGW0SmgXMefEA/profile-displayphoto-shrink_800_800/0/1666653051098?e=1695859200&v=beta&t=lD4LpgEnrN866BzmKcS1ZtG2IyCEcwG06X-cMIlYkYI"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Vanessa Santos",
              style: kHeadline2Text,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien.",
              style: kDescriptionText,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.wppLogo,
                  scale: 2,
                ),
                const SizedBox(
                  width: 25,
                ),
                Image.asset(
                  AppImages.githubIcon,
                  scale: 2,
                ),
                const SizedBox(
                  width: 25,
                ),
                Image.asset(
                  AppImages.instagram,
                  scale: 2,
                ),
                const SizedBox(
                  width: 25,
                ),
                Image.asset(
                  AppImages.facebook,
                  scale: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
