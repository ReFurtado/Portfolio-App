// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/screens/components/presentation.dart';
import 'package:portfolio_app/screens/components/projects.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe9e9e9),

      // //AppBar
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Text(
      //      'Renato Furtado',
      //      style: GoogleFonts.poppins(
      //       fontSize: 18,
      //       fontWeight: FontWeight.w600,
      //       color: Color(0xFF159f9e),
      //      ),
      //   ),
      //   actions: [
      //     TextButton(
      //       onPressed: () {}, 
      //       child: Text(
      //         'Projetos',
      //         style: GoogleFonts.poppins(
      //           fontSize: 18,
      //           fontWeight: FontWeight.w400,
      //           color: Colors.grey.shade500
      //         ),
      //       )
      //     ),
      //   ],
      // ),


      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [

          //Info
          PresentationInfo(),

          //Title
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 50
              ),
              child: Center(
                child: Text(
                  'Alguns dos meus\nprojetos.',
                  textAlign: TextAlign.center, 
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    color: Colors.black, 
                  ),
                ),
              ),
            ),
          ),

          //Projects
          ProjectsInfo(),

          //Contatos
          Container(
            height: 100,
            color: Color(0xFFe9e9e9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Renato Furtado'),
                Text('renatohfp@gmail.com')
              ],
            ),
          )

        ],
      )
    );
  }
}