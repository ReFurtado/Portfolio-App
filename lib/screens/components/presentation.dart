// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PresentationInfo extends StatefulWidget {
  const PresentationInfo({super.key});

  @override
  State<PresentationInfo> createState() => _PresentationInfoState();
}

class _PresentationInfoState extends State<PresentationInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 80
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              //Título Português
              Text(
                'Olá, eu sou o Renato.\nEstou embarcando na jornada da programação.',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  color: Colors.black, 
                ),
              ),
          
              SizedBox(height: 30), //Espaçamento  
          
              //Título inglês
              Text(
                'Hello, I\'m Renato.\nI\'m embarking on the\nprogramming journey.',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  color: Colors.black54, 
                ),
              ),
                
              SizedBox(height: 10), //Espaçamento    
          
              //Foto
              CircleAvatar(
                radius: 200,
                backgroundColor: Colors.white10,
                child: ClipOval(
                  child: Image.asset(
                  'assets/img/1.png',        
                  ),
                )             
              ),

              SizedBox(height: 40), //Espaçamento 
          
              //Redes sociais
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  //Github
                  InkWell(
                    onTap: () async {
                      await launchUrl(Uri.parse('https://github.com/ReFurtado'));
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/img/github.png'
                          ) 
                        )
                      ),
                    ),
                  ),
          
                  SizedBox(width: 20), //Espaçamento 
              
                  //Linkedin
                  InkWell(
                    onTap: () async {
                      await launchUrl(Uri.parse('https://www.linkedin.com/in/renatohfurtado/'));
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/img/linkedin.png'
                          ) 
                        )
                      ),
                    ),
                  ),
                ],
              ),                     
            ],
          ),
        )
      ],
    );
  }
}

//Color(0xFF159f9e),