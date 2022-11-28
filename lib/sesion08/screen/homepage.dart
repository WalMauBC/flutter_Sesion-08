import 'package:flutter/material.dart';
import 'package:flutter_application_1/sesion08/widgets/tiktokwidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2022/11/08/20/20/building-7579247_960_720.jpg',
        'username': 'Prueba 1'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2022/11/10/12/48/kangaroo-7582773_960_720.jpg',
        'username': 'Prueba 2'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/10/24/18/27/lion-2885618_960_720.jpg',
        'username': 'Prueba 3'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2016/11/08/05/18/hot-air-balloons-1807521__340.jpg',
        'username': 'Prueba 4'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2016/11/22/21/33/bonfire-1850646__340.jpg',
        'username': 'Prueba 5'
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              controller: controller,
              itemBuilder: (context, index) {
                final datos = data[index];
                return TiktokWidget(
                  img: datos['img'],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '   Reels',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 30,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
