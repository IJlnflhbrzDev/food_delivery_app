// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:food_delivery/shared/theme/theme.dart';
import 'package:ionicons/ionicons.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage(
                "assets/profile.jpg",
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Ionicons.location,
              size: 15.0,
              color: Colors.black,
            ),
            SizedBox(width: 5),
            Text(
              "IJlal Naufal Hibrizi",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Ionicons.chevron_down,
              size: 15,
              color: Colors.black,
              // color: Colors.black,
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Ionicons.notifications_outline,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Ionicons.bag_handle,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                height: 280,
                color: primaryColor,
                child: SafeArea(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Hi, IJlal",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "Hungry? Ordred & Eat.",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                          ),
                          child: const Icon(Ionicons.search),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              height: 200,
              transform: Matrix4.translationValues(0.0, -148, 0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * .7,
                    margin: const EdgeInsets.all(5),
                    height: 160.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
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
    );
  }
}