import 'package:flutter/material.dart';

class PopularStreamersWidget extends StatelessWidget {
  const PopularStreamersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2.0;
    return SizedBox(
      height: 75.0,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 8.0,
        ),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        itemBuilder: (context, index) => _PopularStreamrsItem(
          width: width,
        ),
      ),
    );
  }
}

class _PopularStreamrsItem extends StatelessWidget {
  final double width;
  const _PopularStreamrsItem({required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xff2a2939),
        borderRadius: BorderRadius.circular(16.0),
      ),
      width: width,
      height: 100.0,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              const CircleAvatar(
                radius: 18.0,
                backgroundColor: Color(0xff69fe96),
              ),
              const CircleAvatar(
                radius: 16.0,
                backgroundImage: NetworkImage(
                  "https://s2.glbimg.com/h5m-VmkOra1ugbCPmL7eJxMkRJ8=/0x0:789x595/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2020/Y/T/zTFjLwQpKLXpXwZgIsCA/cover-cs16.png",
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Stack(
                  alignment: Alignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 8.0,
                      backgroundColor: Color(0xff2a2939),
                      child: Icon(
                        Icons.check_circle,
                        size: 20.0,
                        color: Color(0xff69fe96),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 8.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "auronplay",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2.0),
              Text(
                "9.08M folowers",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 11.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
