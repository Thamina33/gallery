import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.blue,
        title: const Text('Profile'),
      ),
      body: OrientationBuilder(
          builder: (context, orientation){
            if(orientation == Orientation.portrait){
              return Column(
                children: [
                  const SizedBox(height: 12,),
                const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/placeholder.png'),),
                  // Text(orientation.toString(),style: TextStyle(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w600,
                  //     color: Colors.green
                  // ),),
                  const Text("Jhon Deo",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black

                    ),
                      textAlign: TextAlign.justify,
                      maxLines: 4,),
                  ),
                  const SizedBox(height: 12,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1.5,
                            crossAxisSpacing: 5, mainAxisSpacing: 5),
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Image.asset("assets/images/placeholder.png",fit: BoxFit.cover,);
                        },
                      ),
                    ),
                  ),
                ],

              );
            }
            else {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/placeholder.png'),),
                  SizedBox(

                    width: MediaQuery.of(context).size.width/1.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        //   child: Text(orientation.toString(),style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.w600,
                        //       color: Colors.green
                        //   ),),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text("Jhon Deo",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                          ),),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black

                            ),
                            textAlign: TextAlign.justify,
                            maxLines: 4,),
                        ),
                        const SizedBox(height: 12,),
                        Container(
                          height: 200,
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1.5,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5),
                            padding: const EdgeInsets.all(0),
                            shrinkWrap: true,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return
                                Image.asset("assets/images/placeholder.png",fit: BoxFit.cover,);
                            },
                          ),
                        ),

                      ],
                    ),
                  )

                ],
            ),
              );
            }
          }
      ),
    );
  }
}
