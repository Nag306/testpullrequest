import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MarksheetPage()));

class MarksheetPage extends StatelessWidget {
  const MarksheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Government of Tamil Nadu\nDirectorate of Government Examinations',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'SSLC Examination Results  April 2023',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  // Name and Roll Number
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'PRIYADARSHINI P',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('( 5838137 )'),
                    ],
                  ),
                  const Divider(thickness: 1),
                  // Table header
                  Table(
                    columnWidths: const {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(1),
                    },
                    border: TableBorder.all(),
                    children: const [
                      TableRow(
                        decoration: BoxDecoration(color: Color(0xFFE0E0E0)),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('SUBJECT', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('MARKS', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      TableRow(children: [
                        Padding(padding: EdgeInsets.all(8.0), child: Text('TAMIL')),
                        Padding(padding: EdgeInsets.all(8.0), child: Text('097')),
                      ]),
                      TableRow(children: [
                        Padding(padding: EdgeInsets.all(8.0), child: Text('ENGLISH')),
                        Padding(padding: EdgeInsets.all(8.0), child: Text('097')),
                      ]),
                      TableRow(children: [
                        Padding(padding: EdgeInsets.all(8.0), child: Text('MATHS')),
                        Padding(padding: EdgeInsets.all(8.0), child: Text('098')),
                      ]),
                      TableRow(children: [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('SCIENCE ( Theory + Practical )')),
                        Padding(padding: EdgeInsets.all(8.0), child: Text('099 ( 074 + 025 )')),
                      ]),
                      TableRow(children: [
                        Padding(padding: EdgeInsets.all(8.0), child: Text('SOCIAL SCIENCE')),
                        Padding(padding: EdgeInsets.all(8.0), child: Text('097')),
                      ]),
                      TableRow(children: [
                        Padding(padding: EdgeInsets.all(8.0), child: Text('TOTAL')),
                        Padding(padding: EdgeInsets.all(8.0), child: Text('488')),
                      ]),
                      TableRow(children: [
                        Padding(padding: EdgeInsets.all(8.0), child: Text('RESULT')),
                        Padding(padding: EdgeInsets.all(8.0), child: Text('P')),
                      ]),
                      TableRow(children: [
                        Padding(padding: EdgeInsets.all(8.0), child: Text('OPTIONAL')),
                        Padding(padding: EdgeInsets.all(8.0), child: Text('')),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

