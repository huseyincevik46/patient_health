import 'package:flutter/material.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({Key? key}) : super(key: key);

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hi Doctor !'),
          actions: const [Icon(Icons.message)],
          leading: PopupMenuButton(
            onSelected: (value) {
              // Seçilen seçeneğe göre işlem yapın.
            },
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 'Ayarlar',
                child: Text('Ayarlar'),
              ),
              PopupMenuItem(
                value: 'Çıkış',
                child: Text('Çıkış'),
              ),
            ],
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(children: [
          SizedBox(
            //margin: EdgeInsets.all(8),
            height: 300,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const Text('Günlük Plan'),
                Container(
                  color: Colors.orange,
                  height: 100,
                  child: const Card(
                      child: ListTile(
                    title: Text('Mehmet said türk'),
                    subtitle: Text('Durum:1.derece tiberküloz'),
                    trailing: Text('saat:09.00-09.30'),
                  )),
                ),
                Container(
                  color: Colors.orange,
                  height: 100,
                  child: const Card(
                      child: ListTile(
                    title: Text('Mehmet said türk'),
                    subtitle: Text('Durum:1.derece tiberküloz'),
                    trailing: Text('saat:09.00-09.30'),
                  )),
                ),
                Container(
                  color: Colors.orange,
                  height: 100,
                  child: const Card(
                      child: ListTile(
                    title: Text('Mehmet said türk'),
                    subtitle: Text('Durum:1.derece tiberküloz'),
                    trailing: Text('saat:09.00-09.30'),
                  )),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30, child: Text('Hastalarım')),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.orange,
                  width: 200,
                  child: const Card(
                      child: ListTile(
                    title: Text(
                      'Hatice Kurt',
                    ),
                    subtitle: Text(
                      'Hastalık: 1.derece   Durum:stabil',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    trailing: Text('Soğuk'),
                  )),
                ),
              ],
            ),
          ),
        ]));
  }
}
