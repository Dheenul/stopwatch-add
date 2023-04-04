import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'StopWatchVM.dart';
import 'package:google_fonts/google_fonts.dart';

class StopWatchView extends StatelessWidget {
  StopWatchView({super.key});
  StopWatchVM _stopWatchVM = StopWatchVM();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Hi Creator..",style: GoogleFonts.aBeeZee(fontSize: 26, fontWeight: FontWeight.bold),)),
            Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(color: const Color(0xffCAF0F8), borderRadius: BorderRadius.circular(20)),
              child: Observer(builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Timer",style: GoogleFonts.aBeeZee(fontSize: 30, fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _stopWatchVM.minute.toString(),
                          style: GoogleFonts.aBeeZee(fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        Text(" : ", style: GoogleFonts.aBeeZee(fontSize: 50, fontWeight: FontWeight.bold),),
                        Text(
                          _stopWatchVM.second.toString(),
                          style: GoogleFonts.aBeeZee(fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                );
              }),
            ),
            Observer(
              builder: (context) {
                return ElevatedButton(onPressed: (){
                  _stopWatchVM.onClickOfStat();
                }, child: Text(_stopWatchVM.buttonStatus, style: GoogleFonts.aBeeZee(fontSize: 24, fontWeight: FontWeight.bold),));
              }
            )
            // Observer(builder: (context) {
            //   return MaterialButton(
            //       onPressed: () {
            //         _stopWatchVM.onClickOfStat();
            //       },
            //       child: Text(_stopWatchVM.buttonStatus));
            // }),
          ],
        ),
      )),
    ));
  }
}
