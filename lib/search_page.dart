import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/textFormFields.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
          height: 48,
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
        ),
        SizedBox(
          height: 20,
        ),
        customGrid()
      ],
    );
  }

  customGrid() {
    return Container(
      height: 645,
      child: GridView.builder(
        itemCount: 140,
        itemBuilder: (context, index) => Container(
          child: Text((index + 1).toString()),
          color: index % 2 == 0 ? Colors.pink.shade600 : Colors.amber,
        ),
        padding: EdgeInsets.only(top: 0),
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            QuiltedGridTile(2, 2),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 2),
          ],
        ),
      ),
    );
  }
}
