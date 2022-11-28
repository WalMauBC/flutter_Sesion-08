import 'package:flutter/material.dart';

class TiktokWidget extends StatelessWidget {
  final String? img;
  final String? username;

  const TiktokWidget({super.key, this.img, this.username});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(fit: BoxFit.fill, '$img'),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent-lim1-1.xx.fbcdn.net/v/t1.6435-9/126289975_4820767871326500_3036439395367972837_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG6jNhGqpYewyo89by1zO1v6QgkebRlQP_pCCR5tGVA_8SIrr4MgmX8XovknMo4-1wL0oHn2N70zp3krBisKy95&_nc_ohc=ip6vdwnBYycAX9ecaJ0&_nc_ht=scontent-lim1-1.xx&oh=00_AfAhE6MYHXpmT2T2WzktVnkmC3Hs7zdPidUPEGJIqyT68A&oe=63AC99DA'),
                      ),
                      const Text(
                        '         Seguir',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Text(
                    'do you believe?',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        Text(
                          '42',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.comment,
                        color: Colors.white,
                      ),
                      Text(
                        '12',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      ),
                      Text(
                        '32',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      Text(
                        '24',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
