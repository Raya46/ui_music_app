import 'package:dicoding_submission/components/card_musician_comp.dart';
import 'package:dicoding_submission/pages/album_page.dart';
import 'package:dicoding_submission/pages/favorite_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23233F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50.0,
                          child: Icon(
                            Icons.person,
                            size: 60.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'name',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FavoritePage()),
                                );
                              },
                              child: const Column(
                                children: [
                                  Text(
                                    'Songs like',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AlbumPage()),
                                );
                              },
                              child: const Column(
                                children: [
                                  Text(
                                    'Albums Created',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Column(
                    children: [
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
                          like: true),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Recently Played ',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Icon(
                            Icons.arrow_upward,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.arrow_downward,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
