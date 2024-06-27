// import 'package:assignment0/Screens/Send.dart';
import 'package:assignment0/customslider.dart';
// import 'package:assignment0/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 0),
              color: Colors.blue.shade700,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (MediaQuery.of(context).size.height)*0.05,),
                          Text(
                            'Hey James,',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'What would you like to do today?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images.jpeg'),
                      ),
                    ],
                  ),
                  SizedBox(
                      height: (MediaQuery.of(context).size.height) * 0.15),

                  Center(child: CustomSlider())
                  
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 242, 240, 240),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildIconColumn(Icons.receipt, 'Pay Bills'),
                    _buildIconColumn(Icons.favorite, 'Donate'),
                    _buildIconColumn(Icons.person, 'Recipients'),
                    _buildIconColumn(Icons.local_offer, 'Offers'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'RECENT TRANSACTIONS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              children: [
                _buildTransactionItem(
                  'Alexander Young',
                  'Groceries',
                  '19 Feb, 19',
                  '\$500.00',
                  'Sent',
                  Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                _buildTransactionItem(
                  'Lisa Moreno',
                  'School Fee',
                  '02 Feb, 19',
                  '\$2500.00',
                  'Received',
                  Colors.green,
                ),
                SizedBox(
                  height: 10,
                ),
                _buildTransactionItem(
                  'Bryan Valdez',
                  'Health Services',
                  '28 Jan, 19',
                  '\$600.00',
                  'Pending',
                  Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconColumn(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(2, 4)),
            ],
          ),
          child: Icon(icon, color: Colors.blue[800], size: 30),
        ),
        SizedBox(height: 10),
        Text(label),
      ],
    );
  }

  Widget _buildTransactionItem(String name, String category, String date,
      String amount, String status, Color statusColor) {
    return Container(
      // color: Colors.white,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 4)),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                  'assets/portrait-white-man-isolated_53876-40306.avif'),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text('$category • $date'),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  amount,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
