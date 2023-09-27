import 'package:dicoding_submission/pages/single_artist_page.dart';
import 'package:flutter/material.dart';

class CardArtist extends StatelessWidget {
  final String numPlayed;
  final String singerName;
  const CardArtist(
      {super.key, required this.numPlayed, required this.singerName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 6, 20, 6),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SingleArtistPage(
                      singerName: singerName,
                      img: "https://i.ibb.co/PGv8ZzG/me.jpg",
                    )),
          );
        },
        child: Row(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  singerName,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                ),
                Text(
                  "🎧 $numPlayed listener",
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
