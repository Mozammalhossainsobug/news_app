import 'package:flutter/material.dart';
import 'package:news_app/src/core/local_services/routes.dart';
import 'package:news_app/src/core/widget/input_form_field.dart';
import 'package:news_app/src/feature/discovery/presentation/widgets/discovery_widget.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  final List<String> tabs = [
    'Apple',
    'Tesla',
    'Business',
    'Tech',
    'Wall-Street'
  ];
  @override
  void initState() {
    super.initState();
  }

  TextEditingController searchKey = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.menu,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const DiscoverTitle(),
                const SizedBox(height: 35),
                InputFormField(
                  textEditingController: searchKey,
                  hintText: "Search",
                  hintTextStyle: const TextStyle(color: Colors.grey),
                  fillColor: Colors.black12,
                  borderType: BorderType.none,
                  bottomMargin: 10,
                  prefix: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  suffix: const RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.tune,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      tabs: tabs
                          .map(
                            (e) => Tab(
                              text: e,
                            ),
                          )
                          .toList(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.homePage);
                },
                icon: const Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.discoveryPage);
                },
                icon: const Icon(Icons.search),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                ),
              ),
              label: 'Person',
            ),
          ],
        ),
      ),
    );
  }
}
