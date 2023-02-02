import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Switchs extends StatefulWidget {
  const Switchs({Key? key}) : super(key: key);

  @override
  State<Switchs> createState() => _SwitchsState();
}

class _SwitchsState extends State<Switchs> {
  bool ison = false;
  bool ison1 = false;
  bool ison2 = false;
  bool ison3 = false;
  String Selected = "Ahmed";
  int? Numbers;

  List<int> number = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
  List<String> names = ["Ahmed", "Mohamed", "Amr", "Dina", "Amira", "Habiba"];

  // DateTime? Date  ;
  // DateTime? date1;
  TimeOfDay? time;
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            builder: (context) {
              return AlertDialog(
                title: const Text('Hello Form Dilaog'),
                content: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      exit(0);
                    },
                    child: const Text(
                      'Ok',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancel',
                    ),
                  ),
                ],
              );
            },
            context: context,
          );
        },
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Switch(
                      value: ison,
                      onChanged: (value) {
                        ison = value;
                        setState(() {});
                      }),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Checkbox(
                      value: ison1,
                      onChanged: (value) {
                        ison1 = value!;
                        setState(() {});
                      })
                ],
              ),
              CheckboxListTile(
                  title: const Text(
                    'First Name',
                    style: TextStyle(fontSize: 15.0, color: Colors.black87),
                  ),
                  subtitle: const Text(
                    'Second Name',
                  ),
                  value: ison2,
                  onChanged: (value) {
                    ison2 = value!;
                    setState(() {});
                  }),
              SwitchListTile(
                  title: const Text(
                    'Hello',
                    style: TextStyle(fontSize: 15.0, color: Colors.black87),
                  ),
                  subtitle: const Text(
                    'Welcome',
                  ),
                  value: ison3,
                  onChanged: (value) {
                    ison3 = value;
                    setState(() {});
                  }),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.orange[100],
                ),
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SizedBox(
                  width: double.infinity,
                  child: DropdownButton<String>(
                    underline: const SizedBox.shrink(),
                    borderRadius: BorderRadius.circular(28),
                    dropdownColor: Colors.orange[400],
                    onChanged: (value) {
                      Selected = value!;
                      setState(() {});
                    },
                    value: Selected,
                    items: List.generate(
                      names.length,
                      (index) => DropdownMenuItem(
                        value: names[index],
                        child: Text(
                          names[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.orange[100],
                ),
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SizedBox(
                  width: double.infinity,
                  child: DropdownButton<int>(
                    underline: const SizedBox.shrink(),
                    borderRadius: BorderRadius.circular(28),
                    dropdownColor: Colors.orange[400],
                    hint: const Text(
                      "Please Select Number",
                    ),
                    onChanged: (value) {
                      Numbers = value!;
                      setState(() {});
                    },
                    value: Numbers,
                    items: List.generate(
                      number.length,
                      (index) => DropdownMenuItem(
                        value: number[index],
                        child: Text(
                          "Number${number[index]}",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                      )),
                  controller: controller,
                  onTap: () async {
                    DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2023),
                    );
                    if (date != null) {
                      setState(() {
                         controller.text = DateFormat.yMMMd().format(date);
                      });
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: TextFormField(
                  onTap: () async {
                    TimeOfDay? time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    ).then((value) {
                      controller1.text =
                          value!.format(context).toString();
                      return null;
                    });
                      },

                  controller: controller1,
                  decoration: InputDecoration(
                      hintText: 'Time',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
