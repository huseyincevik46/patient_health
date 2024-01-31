import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<String> results = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasta Ekle'),
      ),
      body: Column(
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Arama',
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (text) {
              // Arama sonuçlarını güncelle
              results = text.split(' ').map((e) => e.toLowerCase()).toList();
              setState(() {});
            },
          ),
          ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(results[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
