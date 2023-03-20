import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:food_delivery/core.dart';
import 'package:food_delivery/widget/card_category.dart';
import 'package:food_delivery/widget/card_product_landscape.dart';
import 'package:food_delivery/widget/card_product_potraid.dart';
import 'package:ionicons/ionicons.dart';
import '../../../shared/theme.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: !controller.appBarVisibility
          ? null
          : AppBar(
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
                      color: Colors.black,
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
      body: SingleChildScrollView(
        controller: controller.scrollController,
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                                "Hungry? Order & Eat.",
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
              height: 1000.00,
              transform: Matrix4.translationValues(0.0, -148, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 130,
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
                              image: AssetImage(
                                "assets/promo.png",
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
                  const SizedBox(height: 20),
                  const Text(
                    "Main Categories",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Food delivery services in over the world",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const CardCategory();
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Last time visited",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    controller: ScrollController(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(10, (index) {
                        return const CardProductHorizontal();
                      }),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Near by Popular food",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                          List.generate(controller.products.length, (index) {
                        var item = controller.products[index];
                        return CardProductPotraid(item: item);
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
