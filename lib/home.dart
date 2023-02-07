import 'package:flutter/material.dart';
import 'package:miko_cake_shop/view/cookie_page.dart';
import 'package:miko_cake_shop/view/widget/nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Miko",
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(
          left: 20,
        ),
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Text(
            "Menu",
            style: TextStyle(
                fontFamily: "Varela",
                fontSize: 42.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.red,
            isScrollable: true,
            labelPadding: EdgeInsets.only(
              right: 25,
            ),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Text(
                  "Cake Box",
                  style: TextStyle(
                    fontFamily: "Varela",
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Cake Slice",
                  style: TextStyle(
                    fontFamily: "Varela",
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Chiffon",
                  style: TextStyle(
                    fontFamily: "Varela",
                    fontSize: 21.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                CookiePage(),
                CookiePage(),
                CookiePage(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Navbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(Icons.fastfood),
      ),
    );
  }
}
