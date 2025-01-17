import 'package:flutter/material.dart';
import '../../widgets/global/learnAppBar.dart';
import 'package:learn/widgets/StreakWidget.dart';
import '/widgets/achivievementWidget.dart';
import '/widgets/achivievementWidgetSpecific.dart';
import 'package:learn/widgets/user-profile.dart';
import 'package:learn/widgets/globalProgressWidget.dart';
import 'package:learn/utils/activitiesList.dart';
import 'package:learn/utils/modelsClass.dart';
import 'package:learn/widgets/activitiesWidgets/activitieCardStatic.dart';

class ChildMonitoringSpecific extends StatelessWidget {
  final Children children;

  const ChildMonitoringSpecific({
    required this.children,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LearnAppBarSuper(
        superHeigth: 265 - 24,
        globalHeigth: 225 - 24,
        superWidget: Column(
          children: [
            GlobalProgress(
              pontuation: 100,
              isMascot: false,
            ),
          ],
        ),
        pageIndex: 1,
        backButtonFunction: () {
          Navigator.pop(context);
        },
        child: Container(
            padding: const EdgeInsets.fromLTRB(14, 32, 14, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '${children.name}\n',
                    style: const TextStyle(
                        fontSize: 18,
                        fontFamily: "Fieldwork-Geo",
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
              ],
            )),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            AchievementsWidgetSpecific(
              childAcheivments: children.acheivments,
           ),
           const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                children: [
                  
                  TextSpan(
                    text: 'Conceitos aprendidos\n',
                    style: TextStyle(
                        color: Color(0xFF222222),
                        fontFamily: "Fieldwork-Geo",
                        fontSize: 14,
                        fontWeight: FontWeight.w800),
                  ),
                  WidgetSpan(child: SizedBox(height: 18)),
                  TextSpan(
                      text: 'Essas foram as atividades que a criança já concluiu e os conceitos aprendidos!',
                      style: TextStyle(
                          color: Color(0xFF5C5C5C),
                          fontFamily: "Fieldwork-Geo",
                          fontSize: 12,
                          fontWeight: FontWeight.w300))
                ],
              ),
            ),
            //const SizedBox(height: 16),
           /*ActivitieCardStatic(
              activitie: activitiesList[children.lastActivitie],
              isLocked: false,
              progress: getProgress(children.lastActivitie,
                  children.activities[children.lastActivitie]),
            ),*/
            //const SizedBox(height: 40),
            //AchievementsWidget(
              //childAcheivments: children.acheivments,
           // ),
       ]),
      ),
    );
  }
}
