// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/repository/repository_projects.dart';
import 'package:portfolio_app/screens/components/project_gif.dart';

class ProjectsInfo extends StatefulWidget {
  const ProjectsInfo({super.key});

  @override
  State<ProjectsInfo> createState() => _ProjectsInfoState();
}

class _ProjectsInfoState extends State<ProjectsInfo> {

  //Repository
  final info = ProjectRepository.info;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(bottom: 40),
        child: Column(
          children: [
            for(int i = 0; i < 4; i++)
            
            //Projetos
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20
              ),
              width: double.infinity,
              height: 320,
              child: Row(
                children: [
        
                  //Mockup
                  Image.asset(
                    info[i].image,
                  ),
        
                  SizedBox(width: 10), //Espaçamento 
        
                  //Info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  
                      //Titulo
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Center(
                          child: Text(
                            info[i].name,
                            textAlign: TextAlign.center, 
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black, 
                            ),
                          ),
                        ),
                      ),
        
                      //Descrição
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        width: 160,
                        height: 180,
                        child: Text(
                          info[i].description,
                          //overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.black, 
                          ),
                        ),
                      ),
                  
                      //Botão
                      TextButton(
                        onPressed: () => Get.to(() => ProjectGif(selectdIndex: i)), 
                        child: Row(
                          children: [
                            Text(
                              'Abrir',
                              style: TextStyle(
                                color: Colors.black
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                            )
                          ],
                        )
                      ),
                    ],
                  )
                  
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}