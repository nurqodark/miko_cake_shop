import 'package:flutter/material.dart';
import 'package:miko_cake_shop/model/cake.dart';
import 'package:miko_cake_shop/view/detail_page.dart';

class CookiePage extends StatelessWidget {
  const CookiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 50,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return _buildCard(cakeList[index], context);
              },
              itemCount: cakeList.length,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Cake cake, BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      assetPath: cake.imageUrl,
                      cookieName: cake.name,
                      cookiePrice: cake.price,
                    )),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    cake.isFavorite
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          )
                  ],
                ),
              ),
              Hero(
                tag: cake.imageUrl,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(
                        cake.imageUrl,
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                "Rp ${cake.price}",
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: "Varela",
                  fontSize: 14.0,
                ),
              ),
              Text(
                "Rp ${cake.name}",
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: "Varela",
                  fontSize: 14.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey,
                  height: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.shopping_basket,
                          size: 16,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          "Beli",
                          style: TextStyle(
                            fontFamily: "Varela",
                            color: Colors.red,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.remove_circle_outline,
                          size: 16,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          "3",
                          style: TextStyle(
                              fontFamily: "Varela",
                              color: Colors.red,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        const Icon(
                          Icons.add_circle_outline,
                          size: 16,
                          color: Colors.red,
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
    );
  }
}
