import 'package:flutter/material.dart';
import 'package:mytodo/screens/Bottomnavi.dart/calendar.dart';
import 'package:mytodo/screens/Bottomnavi.dart/focus.dart';
import 'package:mytodo/screens/Bottomnavi.dart/index.dart';
import 'package:mytodo/screens/Bottomnavi.dart/profile.dart';
import 'package:mytodo/services/services.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final Appservices _services = Appservices();
  Widget currentScreen = const Index();
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    String name = 'Index';
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(name)),
        actions: const [
          CircleAvatar(
            child: Icon(Icons.image),
          )
        ],
      ),
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              minWidth: 60,
              onPressed: () {
                setState(() {
                  activeTab = 0;
                  name = 'Index';
                  currentScreen = const Index();
                });
              },
              child: Icon(
                Icons.home,
                color: activeTab == 0 ? Colors.white : Colors.white54,
              ),
            ),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 1;
                    currentScreen = openDialog(context);
                  });
                },
                child: IconButton(
                    icon: Icon(
                      Icons.calendar_month,
                      color: activeTab == 1 ? Colors.white : Colors.white54,
                    ),
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: putdate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                       Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeView()),
    );

                      
                    })),
            const SizedBox(
              width: 80,
            ),
            MaterialButton(
              minWidth: 60,
              onPressed: () {
                setState(() {
                  activeTab = 2;
                  name = 'Focus Mood';
                  currentScreen = const Focus1();
                });
              },
              child: Icon(
                Icons.watch_later_outlined,
                color: activeTab == 2 ? Colors.white : Colors.white54,
              ),
            ),
            MaterialButton(
              minWidth: 60,
              onPressed: () {
                setState(() {
                  activeTab = 3;
                  name = 'Profile';
                  currentScreen = const Profile();
                });
              },
              child: Icon(
                Icons.person_outline,
                color: activeTab == 3 ? Colors.white : Colors.white54,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 64,
        width: 64,
        margin: const EdgeInsets.only(top: 10),
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          backgroundColor: const Color.fromARGB(218, 145, 83, 199),
          onPressed: () {
            openDailog();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Future openDailog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('Add Task'),
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                width: 400,
                child: Column(
                  children: [
                    _services.myADDtextFieldTitle(),
                    _services.myADDtextFieldDESCR()
                  ],
                ),
              ),
            ),
            actions: [
              const Icon(Icons.watch_later_outlined),
              const Icon(Icons.bookmark_add_outlined),
              const Icon(Icons.flag),
              const SizedBox(
                width: 80,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_services.titleController.text != '' &&
                        _services.descriptionController.text != '') {
                      _services.adddata();
                    }
                    _services.titleController.clear();
                    _services.descriptionController.clear();
                    summit();
                    setState(() {});
                  },
                  child: const Icon(Icons.send))
            ],
          ));
  void summit() {
    Navigator.of(context).pop();
  }
}
