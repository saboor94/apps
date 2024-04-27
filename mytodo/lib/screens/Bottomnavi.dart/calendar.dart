import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


  DateTime putdate = DateTime.now();

  openDialog(context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'Choose Date',
            style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white),
          ),
          content:
           SizedBox(
            height: 280,
            child:
             Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.calendar_month),
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: putdate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    //if 'cancel' => null
                    if (newDate == null) {
                      return;
                    }
                  },
                ),
                Text(
                  '${putdate.year}/${putdate.month}/${putdate.day}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
                child: const Text('confirm'),
                onPressed: () {
                  debugPrint('print');
                  ;
                  Navigator.of(context).pop();
                }),
          ],
        ),
      );

