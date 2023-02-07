// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:miko_cake_shop/view/widget/nav_bar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.assetPath,
    required this.cookiePrice,
    required this.cookieName,
  }) : super(key: key);

  final String assetPath;
  final String cookiePrice;
  final String cookieName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Pilihan",
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
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Kue",
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Hero(
              tag: assetPath,
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(assetPath),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              "Rp ${cookiePrice}",
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              cookieName,
              style: TextStyle(
                fontFamily: "Varela",
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: Text(
                "bolu adalah kue bla bolu adalah kue bla bolu adalah kue bla bolu adalah kue bla bolu adalah kue bla bolu adalah kue bla bolu adalah kue bla bolu adalah kue bla bolu adalah kue bla bolu adalah kue bla bolu adalah kue bla bolu adalah kue bla",
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Varela",
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Order via WhatsApp",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Varela',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
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
