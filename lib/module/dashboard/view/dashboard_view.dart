import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/core.dart';
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
                        return Container(
                          margin: const EdgeInsets.only(right: 15),
                          width: 120,
                          height: 180,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(18.0),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                transform:
                                    Matrix4.translationValues(0.0, -7, 0),
                                width: 120,
                                height: 100,
                                child: SvgPicture.asset(
                                  'assets/svg/main_shape.svg',
                                  semanticsLabel: 'A red up arrow',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // uncoment 4
                                    const SizedBox(height: 35),

                                    // uncoment 7

                                    CircleAvatar(
                                      radius: 28.0,
                                      backgroundColor: successColor,
                                      child: Image.asset(
                                        "assets/icon/restaurant.png",
                                        width: 40.0,
                                        height: 40.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    // uncoment 6

                                    const Text(
                                      "Restaurant",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    // uncoment 5

                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                        color: primaryColor,
                                      ),
                                      child: const Icon(
                                        Icons.chevron_right,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
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
                        return Container(
                          width: MediaQuery.of(context).size.width * .7,
                          margin: const EdgeInsets.only(
                            top: 16,
                            bottom: 16,
                            right: 12,
                          ),
                          padding: const EdgeInsets.all(5),
                          height: 100,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://plus.unsplash.com/premium_photo-1675451537385-e76cd7e78087?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Pizza King",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        "MC Donald New york, USA",
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      Row(
                                        children: [
                                          Icon(
                                            Ionicons.star,
                                            color: primaryColor,
                                            size: 10,
                                          ),
                                          const SizedBox(width: 3),
                                          const Text(
                                            "4.5",
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 3),
                                      Row(
                                        children: [
                                          const Expanded(
                                            child: Text(
                                              "15 USD",
                                              style: TextStyle(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          CircleAvatar(
                                            radius: 10.0,
                                            backgroundColor: successColor,
                                            child: const Icon(
                                              Ionicons.bag,
                                              size: 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
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
                        return Container(
                          width: 160,
                          margin: const EdgeInsets.only(right: 12),
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 160,
                                height: 160,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      blurRadius: 24,
                                      offset: Offset(0, 11),
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            item['photo'] ??
                                                "https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(
                                            16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: SizedBox(
                                        height: 42,
                                        child: SvgPicture.asset(
                                          'assets/svg/bottom_shape2.svg',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: const CircleAvatar(
                                          backgroundImage: AssetImage(
                                            "assets/profile.jpg",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      top: 10,
                                      child: CircleAvatar(
                                        backgroundColor: primaryColor,
                                        radius: 16.0,
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 16.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                transform:
                                    Matrix4.translationValues(0.0, -10, 0),
                                color: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      "30%",
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Discount",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: successColor,
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
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
