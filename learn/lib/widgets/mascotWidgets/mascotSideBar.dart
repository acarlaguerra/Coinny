
import 'package:flutter/material.dart';
import '/widgets/mascotWidgets/mascotSideBarIcon.dart';

class MascotSideBar extends StatelessWidget {
  final PageController pageController;

  MascotSideBar({required this.pageController});

  @override
  Widget build(BuildContext context) {
  return Positioned(
    left: 10,
    bottom: 50,
    child: Container(
      padding: const EdgeInsets.fromLTRB(1, 40,1, 40),
      width: 70,
      height: 375,
      alignment: Alignment.bottomLeft,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0.0,
              blurRadius: 10.0,
              offset: Offset(0, -1), 
            ),
          ],
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MascotSideBarIcon(pageController: pageController, name:"Loja"),
          MascotSideBarIcon(pageController: pageController, name:"Alimentos"),
          MascotSideBarIcon(pageController: pageController, name:"Atividades"),
          MascotSideBarIcon(pageController: pageController, name:"Roupas"),
        ],
      ),
    )
  );
  }
}