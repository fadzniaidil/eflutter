import 'package:eflutter/tempdata.dart';
import 'package:flutter/material.dart';

class ListComp4 extends StatelessWidget {
  final int index;

  final Function(int) ontap;
  const ListComp4({Key? key, required this.index, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap(index);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 150,
        width: 100,
        color: Colors.teal,
        child: Center(
          child: Column(
            children: [
              Image.network(
                modelData!.data.participant[index].image,
                fit: BoxFit.cover,
              ),
              Text(
                modelData!.data.participant[index].name,
              )
            ],
          ),
        ),
      ),
    );
  }
}
