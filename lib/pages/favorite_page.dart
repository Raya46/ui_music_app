import 'package:dicoding_submission/components/card_musician_comp.dart';
import 'package:dicoding_submission/pages/add_song_page.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23233F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 0,
                      color: Colors.white.withOpacity(0.28),
                      child: const BackButton(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Favorite Songs',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Card(
                      elevation: 0,
                      color: Colors.white.withOpacity(0.28),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddSongPage()),
                          );
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CardMusician(
                  title: 'jocelyn flores',
                  singer: 'xxxtentacion',
                  img:
                      'https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  like: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CardMusician(
                  title: 'jocelyn flores',
                  singer: 'xxxtentacion',
                  img:
                      'https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  like: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CardMusician(
                  title: 'jocelyn flores',
                  singer: 'xxxtentacion',
                  img:
                      'https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  like: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CardMusician(
                  title: 'jocelyn flores',
                  singer: 'xxxtentacion',
                  img:
                      'https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  like: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CardMusician(
                  title: 'jocelyn flores',
                  singer: 'xxxtentacion',
                  img:
                      'https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  like: true,
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
