import 'package:flutter/material.dart';

Card buildCard() {
    TextStyle titleStyle= TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0);
    TextStyle subTextStyle= TextStyle(color: Color(0xff404040),fontWeight: FontWeight.bold,fontSize: 14.0);

    return Card(
      elevation: 4.0,
       child: Column(
         children: <Widget>[
          Container(
          color: Colors.white,
          child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://www.gstatic.com/webp/gallery/1.jpg',
                          height: 200.0,fit: BoxFit.fitWidth,
                          width: double.infinity,
                        ),
                        Positioned(bottom: 0.0,left: 0.0,right: 0.0,
                            child: Container(
                              height: 30.0,
                              color: Colors.black.withOpacity(.6),child: Row(
                              children: <Widget>[
                                Expanded(child: Row(children: <Widget>[
                            Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                              child:Icon(Icons.thumb_up,color: Colors.blueGrey,)),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0,right: 15.0),
                                    child: Text("Like",style: TextStyle(color: Colors.blueGrey,),),
                                  )
                                ],),flex: 0,),
                                Expanded(child: Row(children: <Widget>[
                                  Icon(Icons.info,color: Colors.blueGrey,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0,right: 15.0),
                                    child: Text("Like",style: TextStyle(color: Colors.blueGrey,),),
                                  )
                                ],),flex: 0,),
                                Expanded(child: Row(children: <Widget>[
                                  Icon(Icons.cloud_download,color: Colors.blueGrey,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0,right: 15.0),
                                    child: Text("Add To Wish",style: TextStyle(color: Colors.blueGrey,),),
                                  )
                                ],),flex: 0,),

                              ],
                            ),
                            ))
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Katrina Kaif",style: titleStyle,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Father: Shubhramanfjv ",style: subTextStyle,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Mother: Sj ",style: subTextStyle,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Goutra: Kashyap ",style: subTextStyle,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("DOB: Tue,sep 2020 ",style: subTextStyle,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Age: 24 Height: 177 ",style: subTextStyle,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Education: BE ",style: subTextStyle,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Work: Software Eng ",style: subTextStyle,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Home contact no: 11 ",style: subTextStyle,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Home: Address",style: subTextStyle,),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
            ),
            ), 
          ),
        ]
      ),
    );
}


// Card buildCard() {
//     var heading = 'Sachin Gupta';
//     var subheading = 'Software Engineer';
//     var cardImage = NetworkImage('https://source.unsplash.com/random/800x600?house');

//     return Card(
//         elevation: 4.0,
//        child: Column(
//          children: <Widget>[
//             ListTile(
//               title: Text(heading),
//               subtitle: Text(subheading),
//               trailing: Icon(Icons.favorite_outline),
//             ),
//             SizedBox(
//               height: 200.0,
//               child: Ink.image(
//                 image: cardImage,
//                 fit: BoxFit.cover,
//               ),
//             ),
//            Container(
//                 color: Colors.white,
//                 child: Padding(
//                   padding: EdgeInsets.only(bottom: 25.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
                     
//                       Padding(
//                           padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
//                           child:  Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   Row(
//                                     children: const <Widget>[
//                                       Text('Name:'),
//                                       Text('Sachin Gupta'),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   Row(
//                                     children: const <Widget>[
//                                      Text('Father:'),
//                                      Text('Omprakash Gupta'),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   Row(
//                                     children: const <Widget>[
//                                      Text('Mother:'),
//                                      Text('Vidhya Gupta'),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   Row(
//                                     children: const <Widget>[
//                                      Text('Gender:'),
//                                       Text('Male'),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ),
//                     ],
//                   ),
//                 ),
//               ),
//             ButtonBar(
//               children: [
//                 TextButton(
//                   child: const Text('View Profile'),
//                   onPressed: () {/* ... */},
//                 ),
//                 TextButton(
//                   child: const Text('Add to wish'),
//                   onPressed: () {/* ... */},
//                 )
//               ],
//             )
//           ],
//         )
//     );
//   }