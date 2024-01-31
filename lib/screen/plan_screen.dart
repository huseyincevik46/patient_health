import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  late final TextEditingController _todoController;
  late final TextEditingController _dateController;
  late final TextEditingController _timeController;

  @override
  void initState() {
    super.initState();
    _todoController = TextEditingController();
    _dateController = TextEditingController();
    _timeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Ekle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _todoController,
              decoration: InputDecoration(
                labelText: 'Todo',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      labelText: 'Tarih',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    final now = DateTime.now();
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: now,
                      firstDate: now,
                      lastDate: DateTime(2050),
                    );
                    if (pickedDate != null) {
                      _dateController.text =
                          DateFormat('dd-MM-yyyy').format(pickedDate);
                    }
                  },
                  icon: Icon(Icons.calendar_today),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _timeController,
                    decoration: InputDecoration(
                      labelText: 'Saat',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    final now = TimeOfDay.now();
                    final pickedTime = await showTimePicker(
                      context: context,
                      initialTime: now,
                    );
                    if (pickedTime != null) {
                      _timeController.text = pickedTime.format(context);
                    }
                  },
                  icon: Icon(Icons.access_time),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Todo ekleme işlemini gerçekleştirin.
              },
              child: Text('Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}
