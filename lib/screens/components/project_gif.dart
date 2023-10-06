// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../repository/repository_projects.dart';

class ProjectGif extends StatefulWidget {

  final int selectdIndex;

  const ProjectGif({super.key, required this.selectdIndex});

  @override
  State<ProjectGif> createState() => _ProjectGifState();
}

class _ProjectGifState extends State<ProjectGif> {

  //Repository
  final info = ProjectRepository.info;

  @override
  Widget build(BuildContext context) {
    int selectdIndex = widget.selectdIndex;
    return Scaffold(

      //AppBar
      appBar: AppBar(
        leading: BackButton(
          color: Color(0xFF159f9e),
        ),
        title: Text(
          info[selectdIndex].name,
          style: GoogleFonts.poppins(
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),

      //Gif
      body: Stack(
        children: [
          
          Center(
            child: ClipRect(
              child: OverflowBox(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
                child: Image.asset(
                  info[selectdIndex].mockup,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}