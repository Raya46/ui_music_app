import 'package:dicoding_submission/pages/music_page.dart';
import 'package:flutter/material.dart';

class CardMusician extends StatelessWidget {
  final String title;
  final String singer;
  final String img;
  final bool like;
  const CardMusician(
      {super.key,
      required this.title,
      required this.singer,
      required this.img,
      required this.like});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MusicPage(
                    title: title,
                    singer: singer,
                    img: img,
                    like: like,
                  )),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  img,
                  width: 65,
                  height: 65,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.person,
                        size: 15.0,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        singer,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: like
                  ? const Icon(
                      Icons.favorite,
                      size: 24.0,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.favorite_border_outlined,
                      size: 24.0,
                      color: Colors.white,
                    )),
        ],
      ),
    );
  }
}
