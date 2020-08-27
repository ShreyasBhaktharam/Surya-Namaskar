import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnSteps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text(
                'POSES',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Pose(
              poseName: '1. Pranamasana - Prayer Pose',
              procedure:
                  'Stand near the top of the mat with the feet hip-distance wide. Exhale and bring the palms to touch in front of the chest',
              mantra: 'Om Mitraya Namaha',
              image: 'images/pranamasana.jpg',
            ),
            Pose(
              poseName: '2. Hasta Uttanasana - Raised Arms Pose',
              procedure:
                  'Inhale and reach the arms toward the sky, palms facing forward. Gently arch the back.',
              mantra: 'Om Raveye Namaha',
              image: 'images/hasta_uttanasana.jpg',
            ),
            Pose(
              poseName: '3. Padahastasana - Hand-to-Foot Pose',
              procedure:
                  'Exhale and bend forward, bringing the palms to the floor on either side of the feet. Bend the knees as needed.',
              mantra: 'Om Suraya Namaha',
              image: 'images/padahastasana.jpg',
            ),
            Pose(
              poseName: '4. Ashwa Sanchalanasana - Equestrain Pose',
              procedure:
                  'Inhale and step the right foot back and bring the knee to the floor. Make sure that the left knee doesn’t move beyond the left ankle. Bring the fingertips to the floor and lengthen the spine, gazing forward.',
              mantra: 'Om Bhanave Namaha',
              image: 'images/ashwa_sanchalanasana.jpg',
            ),
            Pose(
              poseName: '5. Kumbhakasana - Plank Pose',
              procedure:
                  'Hold the breath and step the left foot back so that the feet are hip-distance wide. Align the legs and torso in one diagonal line, arms straight, fingers spread wide.',
              mantra: 'Om Khagaya Namaha',
              image: 'images/kumbhakasana.jpg',
            ),
            Pose(
              poseName: '6. Ashtanga Namaskara - Eight-Limbed Salutation',
              procedure:
                  'Exhale and lower the knees, chest and chin or forehead to the floor. The hips should be lifted from the ground and elbows close to the body.',
              mantra: 'Om Pushne Namaha',
              image: 'images/ashtanga_namaskara.jpg',
            ),
            Pose(
              poseName: '7. Bhujangasana - Cobra Pose',
              procedure:
                  'Inhale and slide forward and up, extending the toes and arching the spine. Lengthen the arms, keeping the elbows bent slightly.',
              mantra: 'Om Hiranya Garbhaya Namaha',
              image: 'images/bhujangasana.jpg',
            ),
            Pose(
              poseName: '8.Parvatasana - Mountain Pose',
              procedure:
                  'Tuck the toes. Push the hips up and back, lengthening the arms so that the body forms a triangle shape.',
              mantra: 'Om Marichaye Namaha',
              image: 'images/bhujangasana.jpg',
            ),
            Pose(
              poseName: '9. Ashwa Sanchalanasana - Equestrian Pose',
              procedure:
                  'Inhale and step the right foot forward between the hands. Lower the left knee to the floor. Make sure that the right knee does not move beyond the right ankle. Bring the fingertips to the floor and lengthen the spine, gazing forward.',
              mantra: 'Om Adityaya Namaha',
              image: 'images/ashwa_sanchalanasana.jpg',
            ),
            Pose(
              poseName: '10. Padhahastasana - Hand-To-Foot Pose',
              procedure:
                  'Exhale and step the left foot forward so that the feet are hip-distance wide. Bow forward, drawing the nose toward the knees.',
              mantra: 'Om Savitre Namaha',
              image: 'images/padahastasana.jpg',
            ),
            Pose(
              poseName: '11.Hasta Uttanasana - Raised Arms Pose',
              procedure:
                  'Inhale and rise to standing, reaching the arms forward and then up toward the sky, palms facing forward. Gently arch back.',
              mantra: 'Om Arkaya Namaha',
              image: 'images/hasta_uttanasana.jpg',
            ),
            Pose(
              poseName: '12. Pranamasana - Prayer Pose',
              procedure:
                  'Exhale and draw the palms together in front of the chest.',
              mantra: 'Om Bhaskaraya Namaha',
              image: 'images/pranamasana.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class Pose extends StatelessWidget {
  Pose({this.poseName, this.procedure, this.mantra, this.image});

  final String poseName;
  final String procedure;
  final String mantra;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                poseName,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                procedure,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Mantra - $mantra',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 210.0,
              width: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//      return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceAround,
//      crossAxisAlignment: CrossAxisAlignment.center,
//      children: [
//        Text(
//          poseName,
//          style: TextStyle(
//            fontWeight: FontWeight.w600,
//          ),
//        ),
//        SizedBox(
//          height: 10.0,
//        ),
//        Text(
//          procedure,
//          textAlign: TextAlign.center,
//          style: TextStyle(
//            fontSize: 13.0,
//          ),
//        ),
//        SizedBox(
//          height: 10.0,
//        ),
//        Text(
//          'Mantra - $mantra',
//          style: TextStyle(
//            fontStyle: FontStyle.italic,
//            fontWeight: FontWeight.w500,
//          ),
//        ),
//        SizedBox(
//          height: 10.0,
//        ),
//        Container(
//          height: 190,
//          width: 230,
//          decoration: BoxDecoration(
//            image: DecorationImage(
//              image: AssetImage(image),
//              fit: BoxFit.contain,
//            ),
//          ),
//        ),
//        Divider(
//          color: Colors.grey,
//          thickness: 1,
//          height: 35,
//          indent: 50,
//          endIndent: 50,
//        ),
//      ],
//    );
