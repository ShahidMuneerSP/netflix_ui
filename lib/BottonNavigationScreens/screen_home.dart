

import 'package:flutter/material.dart';
import 'package:netflix_ui_design/custom_button_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children:[ Container(
                width: double.infinity,
                height: 600,
                decoration:  const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Moneyheist.jpg',)
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.transparent,
                child:  Column(
                  
                  children:[
                     Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/netflix.png',width: 50,height: 50,),
                      Text('TV shows'),  
                      Text('Movies'),
                      Text('My List')
                    ],
                    
                     
                
                     )
                  ]
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomButtonWidget(
                      title: 'List',
                      icon: Icons.add,
                    ),
                    _PlayButton(), 
                    const CustomButtonWidget(icon: Icons.info, title: "Info"),
                  ],
                ),
              ),
            
          ],
        ),
          ]
        ),
      
      ),
    );
  }

  TextButton _PlayButton() {
    return TextButton.icon(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                   icon: const Icon(Icons.play_arrow,size: 30,color: Colors.black), 
                   label: const Padding(
                     padding:  EdgeInsets.symmetric(horizontal:10),
                     child: Text('Play',style: TextStyle(fontSize: 20,color: Colors.black),),
                   )
                   );
  }
}

