import 'package:flutter/material.dart';

import './WiderImage.dart';

class homeScreen extends StatelessWidget {
  List dummyData = [
    {
      "title": "Social",
      "description":
          "seeking or enjoying the companionship of others; friendly; sociable; gregarious. of, relating to, connected with, or suited to polite or fashionable society: a social event. living or disposed to live in companionship with others or in a community, rather than in isolation: People are social beings.",
      "url": "https://picsum.photos/id/0/5616/3744",
    },
    {
      "title": "Economics",
      "description":
          "A standard definition of economics could describe it as: a social science directed at the satisfaction of needs and wants through the allocation of scarce resources which have alternative uses. We can go further to state that: economics is about the study of scarcity and choice.",
      "url": "https://picsum.photos/id/10/2500/1667",
    },
    {
      "title": "Film",
      "description":
          "A film, also known as a movie or a motion picture, is a series of moving images shown on a screen, usually with sound, that make up a story. ... The movie itself is a film, and you can also use the word to mean the photographic strip of plastic that runs through a camera and captures the film's images.",
      "url": "https://picsum.photos/id/100/2500/1656",
    },
    {
      "title": "General",
      "description":
          "of or relating to all persons or things belonging to a group or category: a general meeting of the employees. of, relating to, or true of such persons or things in the main, with possible exceptions; common to most; prevalent; usual: the general mood of the people.",
      "url": "https://picsum.photos/id/1000/5626/3635",
    },
    {
      "title": "Market",
      "description":
          "A market is a place where buyers and sellers can meet to facilitate the exchange or transaction of goods and services. Markets can be physical like a retail outlet, or virtual like an e-retailer. Other examples include the black market, auction markets, and financial markets",
      "url": "https://picsum.photos/id/1001/5616/3744",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'IndyLogix Times',
          ),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: Container(
                    child: Image.network(
                      dummyData[index]['url'],
                      // fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    dummyData[index]['title'],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {                   
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => WiderImage(
                            dummyData[index]['title'],
                            dummyData[index]['url'],
                            dummyData[index]['description']),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
              ],
            );
            // return Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: <Widget>[
            //     Card(
            //       elevation: 10,
            //       margin: EdgeInsets.all(10),
            //       child: Container(
            //         height: 100,
            //         child: Stack(
            //           children: <Widget>[
            //             Container(
            //               child: Image.network(
            //                 dummyData[index]['url'],
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //             Text(
            //               dummyData[index]['title'],
            //               style:
            //                   TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            //             ),
            //             SizedBox(height: 20),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // );

            // return Container(
            //   child: Column(
            //     children: <Widget>[
            //       Text(
            //         dummyData[index]['title'],
            //         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            //       ),
            //       SizedBox(height: 10),
            //       Text(
            //         DateFormat("dd-MM-yy HH:mm").format(
            //           DateTime.now(),
            //         ),
            //       ),
            //       Container(
            //         child: Image.network(dummyData[index]['url']),
            //       ),
            //       Text(
            //         (dummyData[index]['description']),
            //       ),
            //       Divider(),
            //       SizedBox(height: 20),
            //     ],
            //   ),
            // );
          },
          itemCount: 5,
        ));
  }
}
