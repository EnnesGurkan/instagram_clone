import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/textFormFields.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomTextFormField(
            height: 40,
            backgroundColor: Colors.grey.shade400,
            radius: 10,
            hintText: "Search",
            icon: Icon(Icons.search),
          ),
        )
      ],
    );
  }
}
