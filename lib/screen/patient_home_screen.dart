import 'package:flutter/material.dart';

class PatientHome extends StatefulWidget {
  const PatientHome({super.key});

  @override
  State<PatientHome> createState() => _PatientHomeState();
}

class _PatientHomeState extends State<PatientHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
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
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 200,
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                    Text('Hi Mehmet'),
                    Text('26 years,Kahrmanmaraş'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('SAĞlık Durumu : Kayıt Yok !'),
                          SizedBox(width: 30),
                          Text(' Yaş:26  Boy:1.78 ')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: IconButton(
                    style: ButtonStyle(
                      iconSize: MaterialStatePropertyAll(50),
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.access_alarm)),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: IconButton(
                    style: ButtonStyle(
                      iconSize: MaterialStatePropertyAll(50),
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.health_and_safety)),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: IconButton(
                    style: ButtonStyle(
                      iconSize: MaterialStatePropertyAll(50),
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.medical_information)),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: IconButton(
                    style: ButtonStyle(
                      iconSize: MaterialStatePropertyAll(50),
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.run_circle)),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return _CustomCard();
            },
          ),
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('İLAÇ VAKTİ'),
                  Text('SAAT: '),
                  Text('Tansiyon ilacı')
                ],
              ),
            ),
            Row(
              children: [
                Text('20.00'),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
