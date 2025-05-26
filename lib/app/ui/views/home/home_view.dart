import 'package:app_market_challenge/app/ui/components/custom_search_bar.dart';
import 'package:app_market_challenge/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10.0,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      Text(
                        'Mi tienda',
                        style: AppTextStyle(
                          context,
                        ).bold15(color: Colors.black),
                      ),
                    ],
                  ),
                  CustomSearchBar(
                    hintText: 'Busca en Mi Tienda',
                    onSubmitted: () {},
                    onChanged: (String? value) {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: ListView(
                  children: [
                    Container(
                      height: 100.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          categorieWidget('https://img.freepik.com/vector-gratis/productos-lacteos-frescos-elaborados-queso-mantequilla_1284-14075.jpg?semt=ais_hybrid&w=740', 'Refrigerados'),
                          SizedBox(width: 40.0,),
                          categorieWidget('','Lacteos y\nhuevos'),
                          SizedBox(width: 40.0,),
                          categorieWidget('', 'Vinos y\nlicores'),
                          SizedBox(width: 40.0,),
                          categorieWidget('', 'Snacks y\ngalletas'),
                          SizedBox(width: 40.0,)
                          ],
                      ),
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

Widget categorieWidget(String linkImg, String text) {
  return Column(
    children: [
      CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage(
          linkImg,
        ),
      ),
      Text(text)
    ],
  );
}
