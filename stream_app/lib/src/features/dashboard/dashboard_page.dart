import 'package:flutter/material.dart';
import 'package:vhs/vhs.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.format_align_left),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Center(
              child: Material(
                borderRadius: BorderRadius.circular(150.0),
                color: Colors.blue,
                child: InkWell(
                  borderRadius: BorderRadius.circular(150.0),
                  onTap: () {},
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.person,
                        ),
                      ),
                      const Positioned(
                        top: 0,
                        right: -10,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF68FF9b),
                          radius: 4.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: BigTitleWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: FilterChipsWidget(
              onChange: (data) => print("Selected: ${data.join(",")}"),
              filters: const [
                "Esport",
                "Channels",
                "Categories",
                "Food",
              ],
            ),
          ),
          const TitleWidget(title: "Live Now"),
          const SizedBox(height: 16.0),
          const LiveNowWidget(),
          const SizedBox(height: 16.0),
          const TitleWidget(title: "Popular Streamers"),
          const SizedBox(height: 16.0),
          const PopularStreamersWidget(),
          const SizedBox(height: 16.0),
          const TitleWidget(title: "Top Categories"),
          const SizedBox(height: 16.0),
          const LiveNowWidget(),
          const SizedBox(height: 16.0),
        ],
      ),
      bottomNavigationBar: TransparentBottomBarWidget(
        onChange: (selectedIndex) {
          print(selectedIndex);
        },
      ),
      extendBody: true,
    );
  }
}
