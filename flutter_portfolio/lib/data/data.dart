import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = const Color.fromARGB(255, 8, 45, 120);
Color kGradient2 = const Color.fromARGB(255, 64, 191, 255);

String imagePath = "/Users/nataliemohun/icons8-book-50.png";

//String data to modify
String name = "LiteraryLabs";

//Contact Email
String contactEmail = "bookcoverorders@gmail.com";

String aboutWorkExperience = '''
LiteraryLabs is collection of book lovers who happen to be software engineers.
''';

String aboutMeSummary = '''
LiteraryLabs was created as a response to deliver a seamless mobile application to help your local independent bookstore with e-commerce solutions.
''';

String location = "United Stats";
String website = "IDK";
String portfolio = "IDK";
String email = "bookcoverorders@gmail.com";

List<Project> projectList = [
  Project(
      name: "BookCover Mobile App",
      description:
          "Check Us out on the following App Store Platforms",
      link: "apple store and goolge play goes here"),
  
];
