import 'package:dicoding_submission/components/card_category_comp.dart';
import 'package:dicoding_submission/components/card_music_comp.dart';
import 'package:dicoding_submission/components/card_musician_comp.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23233F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          color: Colors.white.withOpacity(0.28),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 9, bottom: 9),
                            child: Icon(
                              Icons.menu,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Expanded(
                      flex: 4,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.white.withOpacity(0.28),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 7, bottom: 7),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.search,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  'Search',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trending right now',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const CardMusic(
                        band: 'Payung teduh',
                        title: 'resah',
                        img:
                            'https://images.pexels.com/photos/1762578/pexels-photo-1762578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const CardMusic(
                        band: 'band a',
                        title: 'lagu a',
                        img:
                            'https://images.pexels.com/photos/2479312/pexels-photo-2479312.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const CardMusic(
                        band: 'dilan 2069',
                        title: 'malam',
                        img:
                            'https://images.pexels.com/photos/2191013/pexels-photo-2191013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const CardMusic(
                        band: 'band ot',
                        title: 'bapak 2lu',
                        img:
                            'https://images.pexels.com/photos/144429/pexels-photo-144429.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                margin: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CardCategory(
                        color: Color(0xFF432993), title: 'Trending right now'),
                    CardCategory(color: Colors.transparent, title: 'Rock'),
                    CardCategory(color: Colors.transparent, title: 'Hip Hop'),
                    CardCategory(color: Colors.transparent, title: 'Electro'),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  children: [
                    const CardMusician(
                        title: 'bibupbipbop',
                        singer: 'david guetta',
                        img:
                            'https://images.pexels.com/photos/6173832/pexels-photo-6173832.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        like: false),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const CardMusician(
                        title: 'hussle',
                        singer: 'nipsey cibaduyut',
                        img:
                            'https://images.pexels.com/photos/4722551/pexels-photo-4722551.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        like: false),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const CardMusician(
                        title: 'outside',
                        singer: 'vinisius car',
                        img:
                            'https://images.pexels.com/photos/2231755/pexels-photo-2231755.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        like: false),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const CardMusician(
                        title: 'bibupbipbop',
                        singer: 'david guetta',
                        img:
                            'https://images.pexels.com/photos/6173832/pexels-photo-6173832.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        like: false),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
