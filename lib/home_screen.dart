import 'package:flutter/material.dart';
import 'package:movieapp/data/model/categories_model.dart';
import 'package:movieapp/widgets/carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 5, 29),
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome Bosokoli 👋",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "Watch a movie and relax!",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.person),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 44, 40, 40),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                                hintText: "Search Products"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 44, 40, 40),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.shuffle),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text("Category",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        )),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Row(children: const [
                        Text("see all",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Colors.orange,
                        )
                      ]),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 90,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 44, 40, 40),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                categories[index].values.first,
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              )),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(categories[index].keys.first)
                        ],
                      );
                    }),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Showing this month",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 30),
                child: MovieCarousel(),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 17, 5, 29),
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              label: "home",
              icon: Icon(
                Icons.home_rounded,
              ),
            ),
            BottomNavigationBarItem(
              label: "explore",
              icon: Icon(
                Icons.explore,
              ),
            ),
            BottomNavigationBarItem(
              label: "Movies",
              icon: Icon(
                Icons.movie,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(
                Icons.person,
              ),
            )
          ]),
    );
  }
}
