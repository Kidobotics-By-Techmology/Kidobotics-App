import 'package:kidobotics_app/src/models/product_model.dart';

class LocalServices {
  static List<Product> products = [
    Product(
      title: 'Mobot',
      title2: 'Mobot-1',
      title3: 'Mobot now is with 2 colors, get it now',
      description:
          'MoBot est une série de kit de robotique gradué par niveau de complexité dédie aux petits comme aux grands développé et produits en Algérie. Ils ont comme objectif de faire voyager leurs chanceux détenteurs dans le vaste domaine de la robotique tout en leurs apprenant les différentes notions nécessaires pour chaque kit a travers des playlists de vidéos.',
      videoUrl: 'assets/videos/educative-robotic-mobot.mp4',
      images: [
        'assets/images/mobot-blue.png',
        'assets/images/mobot-pink.jpg',
        'assets/images/mobot-ecom.jpg',
        'assets/images/boite-vue-explosee.jpg',
        'assets/images/boite-mobot2-robot.jpg',
        'assets/images/boite-mobot.jpg',
        'assets/images/boite-vue-explosee-mobot-1-2.jpg',
      ],
      shortDescription1:
          'Un kit de robot suiveur de ligne pour débutant sans programmation. Avec ses formations et tutoriels inclus, ce kit va vous permettre d’apprendre facilement son principe de fonctionnement ainsi que les connaissances en physiques, mécaniques et électroniques requises pour le faire fonctionner.',

      shortDescription2: 'Amusez-vous en construisant le MoBot et commencez votre exploration dans le monde de la robotique!',
    ),
  ];
}
