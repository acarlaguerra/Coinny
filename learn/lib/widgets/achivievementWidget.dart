import 'package:flutter/material.dart';
import '/utils/acheiviementsList.dart';
import 'package:learn/widgets/achivievementIcons.dart';

class AchievementsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Conquistas alcaçadas",
            style :  TextStyle(color: Color(0xFF000000), fontSize:14, fontFamily: 'Fieldwork-Geo', fontWeight: FontWeight.w600)
          ),
          const Text(
            "Reconheça os seus filhos pelas suas vitórias!",
            style :  TextStyle(color: Color(0xFF383838), fontSize:12, fontFamily: 'Fieldwork-Geo', fontWeight: FontWeight.w400)
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AchievementIcon(data: achievementsList[0], heigth: 140, width: screenWidth/2 - 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AchievementIcon(data: achievementsList[1], heigth: 60, width: screenWidth/2 - 40,),
                  const SizedBox(height: 15),
                  Container(
                    width: screenWidth/2 - 40,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      gradient: const  LinearGradient(
                        colors:  [Color(0xFFF8D24D), Color(0xFFFEC224)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12.5)
                    ),
                    child : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Ver todas as\nconquistas",
                          style :  TextStyle(color: Colors.white, fontSize:12, fontFamily: 'Fieldwork-Geo', fontWeight: FontWeight.w800)
                        ),
                        Image.asset(
                          'assets/images/appIcons/awardIcon.png',
                          height: 24),
                        
                      ],
                    )
                  )
                ],
              )
            ],
          )
        ],
      )
    );
  }
}