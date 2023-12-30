import 'package:flutter/material.dart';

import 'item.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    this.itemIndex,
    this.item,
    this.press,
  }) : super(key: key);

  final int? itemIndex;
  final Item? item;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 25),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: size.width * 12 / 5,
              height: size.height * 1 / 4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300]!.withOpacity(1.0),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Hero(
                    tag: '${item!.id}',
                    child: Image.asset(
                      item!.image!,
                      width: 130,
                      height: 130,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${item!.title}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
