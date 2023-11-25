import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:input_form_field/input_form_field.dart';
import 'package:news_app/src/feature/discovery/presentation/widgets/discovery_widget.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  TextEditingController searchKey = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
        extendBodyBehindAppBar: true,
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150),
              const DiscoverTitle(),
              const SizedBox(height: 80),
              InputFormField(
                textEditingController: searchKey,
                hintText: "Search",
                hintTextStyle: TextStyle(color: Colors.grey),
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
                    Icons.list,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
