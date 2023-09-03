// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710379';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme
        .of(context)
        .textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0), // Add equal padding on all sides
        child: Container(
          width: 300,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 5.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align content at the top
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Question 1 of 30',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'How many legs does a cat have??',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }




  _buildButtonPanel() {
    // Define what should happen when the first button is tapped
    void handleFirstButtonTap() {
      // Add your functionality for the first button here
      print("First Button tapped!");
      // You can navigate to another screen or perform any other action.
    }

    // Define what should happen when the second button is tapped
    void handleSecondButtonTap() {
      // Add your functionality for the second button here
      print("Second Button tapped!");
      // You can navigate to another screen or perform any other action.
    }

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // Adjust the alignment as needed
        children: [
          GestureDetector(
            onTap: handleFirstButtonTap,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.blue),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('<', style: TextStyle(color: Colors.blue)),
            ),
          ),
          GestureDetector(
            onTap: handleSecondButtonTap,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.red),
                // Different color for the second button
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('>', style: TextStyle(color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
