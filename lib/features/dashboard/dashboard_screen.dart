import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem {
  String title;
  String subtitle;
  bool isCheck;

  ListItem({
    required this.title,
    required this.subtitle,
    required this.isCheck,
  });
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ListItem> items = [
      ListItem(title: "Ikram Khan", subtitle: "{h:10 w:40} - 20:46 pm", isCheck: true),
      ListItem(title: "Usama Khan", subtitle: "{h:10 w:40} - 20:46 pm", isCheck: false),
      ListItem(title: "Saqib Ahmad", subtitle: "{h:10 w:40} - 20:46 pm", isCheck: true),
      ListItem(title: "--", subtitle: "{h:10 w:40} - 20:46 pm", isCheck: false),
    ];
    return Scaffold(
      backgroundColor: Colors.red[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Mark!",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Exarth LLC",
                        style: GoogleFonts.aBeeZee(
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Total Scans",
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "4",
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Your Scans",
                                  style: GoogleFonts.lato(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Scans you have made today",
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          ListItem item = items[index];
                          IconData icon = item.isCheck ? Icons.check : Icons.close;
                          Color color = item.isCheck ? Colors.green : Colors.redAccent;

                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: ListTile(
                              dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              style: ListTileStyle.list,
                              leading: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.handshake_outlined,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                              title: Text(
                                item.title,
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                item.subtitle,
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 12,
                                  color: Colors.grey[500],
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  icon,
                                  color: color,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}