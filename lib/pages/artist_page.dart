import 'package:dicoding_submission/components/card_artist_comp.dart';
import 'package:flutter/material.dart';

class ArtistPage extends StatefulWidget {
  const ArtistPage({Key? key}) : super(key: key);

  @override
  State<ArtistPage> createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23233F),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
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
                    'Artist popular',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
              shrinkWrap: true,
              reverse: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return CardArtist(
                  numPlayed: '${index + 1000}',
                  singerName: 'singer $index',
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
