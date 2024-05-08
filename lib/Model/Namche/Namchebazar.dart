import 'package:flutter/material.dart';
import 'package:try_something/Model/Namche/Hotels.dart';

class MyNamchebazar extends StatefulWidget {
  const MyNamchebazar({super.key});

  @override
  State<MyNamchebazar> createState() => _NamchebazarState();
}

class _NamchebazarState extends State<MyNamchebazar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 221, 244, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/namchebazaar.jpg',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'NAMCHEBAZAAR',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 3),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                        'Namche Bazaar is popular with trekkers in the Khumbu region, especially for altitude acclimatization, and is the gateway to the high Himalaya. The town has a number of lodgings and stores catering to the needs of visitors as well as a number of internet cafés.There are German bakeries, little cafes and many restaurants.\n\nThere is also an Irish pub, said to be the highest and most remote Irish pub in the world.A popular local meal is yak steak.On Saturday mornings, a weekly market is held in the centre of the village.There may also be a daily Tibet market where clothing and cheap Chinese consumer goods tend to be the main articles for sale.',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal)),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Hotels(),
                          ));
                    },
                    icon: Icon(Icons.book_online),
                    label: Text('BOOK HOTELS'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
