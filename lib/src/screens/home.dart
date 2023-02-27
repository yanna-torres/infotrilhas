import 'package:flutter/material.dart';
import 'package:infotrilhas/src/models/cadeiras.dart';
import 'package:infotrilhas/src/models/text.dart';
import 'package:infotrilhas/src/models/var.dart';
import 'package:infotrilhas/src/ui_components/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Cadeira> trilha = getCadeira('trilha');
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_sharp),
          ),
        ],
      ),
      drawer: const Menu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              'Início',
              style: PAGE_TITLE,
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              'Cadeiras da Trilha',
              style: CATEGORY_TITLE,
            ),
          ),
          const SizedBox(height: 14),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: trilha.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 25),
                  Column(
                    children: [Text(trilha[index].title)],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
