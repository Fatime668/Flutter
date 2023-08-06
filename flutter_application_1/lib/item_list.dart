import 'package:flutter/material.dart';

class ItemList extends StatefulWidget {
  final List<String> itemList;
  final List<Color> itemColors;

  const ItemList({super.key, required this.itemList, required this.itemColors});

  @override
  // ignore: library_private_types_in_public_api
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<int> itemNumbers = List<int>.generate(20, (index) => 0); // Initialize itemNumbers to all zeros.

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: widget.itemList.length,
      itemBuilder: (BuildContext context, int index) {
        return buildListItem(index);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget buildListItem(int index) {
    final Color color = widget.itemColors[index % widget.itemColors.length];
    final String name = widget.itemList[index];
    final int number = itemNumbers[index];

    return InkWell(
      onTap: () {
        setState(() {
          itemNumbers[index]++; // Increment the number for the clicked item.
        });
      },
      child: Container(
        color: color,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(Icons.person, color: Colors.white),
                  const SizedBox(width: 10),
                  Text(
                    name,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text('${number + 1}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
