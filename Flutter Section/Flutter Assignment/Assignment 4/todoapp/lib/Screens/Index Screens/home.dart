import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  List<Task> tasks = [];
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  int selectedPriority = 4; // Default priority (None)

  void _showAddDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Item"),
          contentPadding: EdgeInsets.all(20),
          content: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(labelText: "Title"),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(labelText: "Description"),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2101),
                          );

                          if (pickedDate != null &&
                              pickedDate != selectedDate) {
                            setState(() {
                              selectedDate = pickedDate;
                            });
                          }
                        },
                        child: Text("Pick Date"),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () async {
                          TimeOfDay? pickedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );

                          if (pickedTime != null &&
                              pickedTime != selectedTime) {
                            setState(() {
                              selectedTime = pickedTime;
                            });
                          }
                        },
                        child: Text("Pick Time"),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  DropdownButton<int>(
                    value: selectedPriority,
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedPriority = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem<int>(
                        value: 1,
                        child: Text("High"),
                      ),
                      DropdownMenuItem<int>(
                        value: 2,
                        child: Text("Medium"),
                      ),
                      DropdownMenuItem<int>(
                        value: 3,
                        child: Text("Low"),
                      ),
                      DropdownMenuItem<int>(
                        value: 4,
                        child: Text("None"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                String enteredTitle = titleController.text;
                String enteredDesc = descriptionController.text;

                Task newTask = Task(
                  title: enteredTitle,
                  description: enteredDesc,
                  date: selectedDate,
                  time: selectedTime,
                  priority: selectedPriority,
                );
                tasks.add(newTask);

                Navigator.of(context).pop();

                titleController.clear();
                descriptionController.clear();
                setState(() {
                  selectedDate = null;
                  selectedTime = null;
                  selectedPriority = 4; // Reset to default priority (None)
                });
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Index",
            style: TextStyle(color: Colors.white),
          ),
        ),
        drawer: Drawer(),
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Row(
                  children: [
                    Text(
                      tasks[index].title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    _buildPriorityIcon(tasks[index].priority),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description: ${tasks[index].description}"),
                    Row(
                      children: [
                        if (tasks[index].date != null)
                          Text(
                            "Date: ${DateFormat('yyyy-MM-dd').format(tasks[index].date!)}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        if (tasks[index].date != null &&
                            tasks[index].time != null)
                          SizedBox(width: 10),
                        if (tasks[index].time != null)
                          Text(
                            "Time: ${tasks[index].time!.format(context)}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showAddDialog();
          },
          backgroundColor: Color.fromARGB(255, 128, 149, 238),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildPriorityIcon(int? priority) {
    IconData icon;
    Color color;

    switch (priority) {
      case 1:
        icon = Icons.turned_in_not_rounded;
        color = Colors.red;
        break;
      case 2:
        icon = Icons.turned_in_not_rounded;
        color = Colors.orange;
        break;
      case 3:
        icon = Icons.turned_in_not_rounded;
        color = Colors.yellow;
        break;
      default:
        icon = Icons.turned_in_not_rounded;
        color = Colors.green;
    }

    return Icon(
      icon,
      color: color,
    );
  }
}

class Task {
  final String title;
  final String description;
  final DateTime? date;
  final TimeOfDay? time;
  final int? priority;

  Task({
    required this.title,
    required this.description,
    this.date,
    this.time,
    this.priority,
  });
}
