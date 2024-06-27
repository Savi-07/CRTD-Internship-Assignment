import 'package:flutter/material.dart';

class Send extends StatefulWidget {
  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  final List<String> payees = [
    'Eric Peterson\n8-(624)667-1698',
    'Douglas Adams\n8-(624)667-1698',
    'Lawrence Fernandez\n8-(624)667-1698',
    'Doris Larson\n8-(624)667-1698',
    'Amanda Lewis\n8-(624)667-1698',
    'Albert Hansen\n8-(624)667-1698',
    'Laura Arnold\n8-(624)667-1698',
    'Grace Wade\n8-(624)667-1698'
  ];

  TextEditingController searchController = TextEditingController();
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Send Money')),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Select Payee',
              
              // border: BorderRadius.circular(radius),
               border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

                suffixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value.toLowerCase();
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: payees
                  .where((payee) => payee.toLowerCase().contains(searchQuery))
                  .length,
              itemBuilder: (context, index) {
                var filteredPayees = payees
                    .where((payee) => payee.toLowerCase().contains(searchQuery))
                    .toList();
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: Image.asset(
                            'assets/profile.png', // add image location here
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Text(
                            filteredPayees[index],
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
