import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.circle_sharp,
              size: 12,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Untitled UI",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    kGradient1,
                    kGradient2,
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    //  decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                    width: 300,
                    height: 80,
                    child: Column(
                      children: [
                        Container(
//decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          child: Image(
                 
                      
                            image: AssetImage((imagePath))),
                        ),
                       

 Center(
          child: HtmlWidget(
            textStyle: TextStyle(color: Colors.black,fontSize: 10),
            '<a target="_blank" style="color:black" href="https://icons8.com/icon/42763/book">Book Icon</a> <br> by <a target="_blank" style="color:black" href="https://icons8.com">Icons8</a>'),
        ),

                         
                               
                      ],
                    ),
                  ),
                ),
              ),
            ),
            
            Center(
                child: Text(
              name,
              style: kTitleText,
            )),
            Center(
                child: Text(
              "",
              style: kSubTitleText,
            )),
            const SizedBox(
              height: 10,
            ),
              Center(
              child: SizedBox(
                  width: context.screenConstraint().width * 0.8,
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio:
                              context.screenConstraint().width > 1000 ? 3 : 2),
                      itemCount: projectList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProjectWidget(
                          projectData: projectList[index],
                        );
                      })),
            ),
            
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.8,
                child: context.screenConstraint().width > 1200
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Experience",
                                  style: kSectionTitleText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutWorkExperience,
                                 style: TextStyle(color: const Color.fromARGB(255, 191, 190, 190))),
                               
                                const Divider(),
                                Text("About Me", style: kSectionTitleText),
                                const SizedBox(
                                  height: 10,
                                ),
                                 Text(aboutMeSummary,
                                   style: TextStyle(color: const Color.fromARGB(255, 191, 190, 190))),
                               
                              ],
                            ),
                          ),
                          
                        ],
                      )
                    : Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Experience",
                                style: kSectionTitleText,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutWorkExperience,
                               style: TextStyle(color: const Color.fromARGB(255, 191, 190, 190))
                               
                               ),
                              const Divider(),
                              Text("About Me", style: kSectionTitleText,
                              
                              
                              
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutMeSummary,
                                   style: TextStyle(color: const Color.fromARGB(255, 191, 190, 190))),
                               
                            ],
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
