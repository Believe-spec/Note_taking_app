import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  Widget buildNoteCard({
    required IconData icon,
    required String title,
    required Color cardColor,
    required Color iconBg,
    required Color textColor,
    required String subtitle,
  }) {
    return Container(
      height: 180,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: iconBg,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: cardColor == Colors.blueAccent
                    ? Colors.blue
                    : Colors.grey[700],
              ),
            ),
          ),

          Spacer(),

          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),

          SizedBox(height: 8),

          Text(
            subtitle,
            style: TextStyle(fontSize: 15, color: textColor.withOpacity(0.8)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF6FF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('lib/assets/app3.jpeg'),
                  ),

                  SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Franklin",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 3),

                        Text(
                          "Staff Member",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.settings, color: Colors.grey[700]),
                  ),

                  SizedBox(width: 10),

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.notifications, color: Colors.grey[700]),
                  ),
                ],
              ),

              SizedBox(height: 25),

              TextField(
                decoration: InputDecoration(
                  hintText: "search notes tags",
                  prefixIcon: Icon(Icons.search),

                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.mic),
                    ),
                  ),
                  suffixIconConstraints: BoxConstraints(
                    minHeight: 42,
                    minWidth: 42,
                  ),

                  filled: true,

                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(38),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: buildNoteCard(
                      icon: Icons.text_fields,
                      title: "Text Note",
                      subtitle: "Write and Save your thought",
                      cardColor: Colors.white,
                      iconBg: Colors.grey.shade200,
                      textColor: Colors.black,
                    ),
                  ),

                  SizedBox(width: 12),

                  Expanded(
                    child: buildNoteCard(
                      icon: Icons.keyboard_voice_outlined,
                      title: "Voice Note",
                      subtitle: "Record and Save your voice",
                      cardColor: Colors.white,
                      iconBg: Colors.grey.shade200,
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: buildNoteCard(
                      icon: Icons.image_outlined,
                      title: "Image Note",
                      subtitle: "capture the moments of your day",
                      cardColor: Colors.white,
                      iconBg: Colors.grey.shade200,
                      textColor: Colors.black,
                    ),
                  ),

                  SizedBox(width: 12),

                  Expanded(
                    child: buildNoteCard(
                      icon: Icons.text_fields,
                      title: "AI Note",
                      subtitle: "Create notes with the fast tool",
                      cardColor: Colors.white,
                      iconBg: Colors.grey.shade200,
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recent Notes",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Daily journal Entry",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.more_vert_outlined),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(width: 10),

                        Text("Crime Reports", style: TextStyle(fontSize: 15)),
                      ],
                    ),

                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Submit News From Staff",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text("Personal"),
                        ),
                        SizedBox(width: 10),

                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text("Journal"),
                        ),

                        Spacer(),

                        Icon(
                          Icons.calendar_today_outlined,
                          size: 16,
                          color: Colors.grey,
                        ),

                        SizedBox(width: 10),

                        Text(
                          "2 Days Ago",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        elevation: 8,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home_rounded, color: Colors.blue),
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit_note_outlined),
              ),
              const SizedBox(width: 40),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_circle_outline),
              ),

              IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined)),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 4,
        child: const Icon(Icons.add, color: Colors.black, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
