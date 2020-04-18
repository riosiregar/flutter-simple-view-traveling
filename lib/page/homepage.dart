import 'package:darkmodeimplement/page/data/list-recommended.dart';
import 'package:darkmodeimplement/page/data/list_popular.dart';
import 'package:darkmodeimplement/page/data/padding_tamplate.dart';
import 'package:darkmodeimplement/widget/popular_now_container.dart';
import 'package:darkmodeimplement/widget/recommended_containter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double _paddingWidth = paddingWidth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
               padding: EdgeInsets.symmetric(horizontal: _paddingWidth),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white.withOpacity(.3),
                            letterSpacing: 1.0,
                          ),
                          text: "Explorer",
                          children: [
                            TextSpan(text: "Europe",
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.white,
                            )
                            )
                          ]
                        )),
                        Icon(
                          Icons.search,
                          size: 35.0,
                        ),
                    ],
                  ),
              ),
              Padding(
                  padding:  EdgeInsets.only(
                    left: _paddingWidth,
                    top: 50.0,
                    bottom: 12.0,
                  ),
                  child: Text("Popular Menu"),
              ),
            Container(
              height: 250.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listPopulars.length,
                  itemBuilder: (BuildContext context, int index) {
                    ListPopular listPopular = listPopulars[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: PopularNowContainer(
                      locationName: listPopular.locationName,
                      cityName: listPopular.cityName,
                    ),
                  );
               },
              ),
            ),
          Padding(
                  padding:  EdgeInsets.only(
                    left: _paddingWidth,
                    top: 50.0,
                    bottom: 12.0,
                  ),
                  child: Text("Rekomendasi Tempat"),
              ),
            Container(
              height: 250.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendedlocs.length,
                  itemBuilder: (BuildContext context, int index) {
                    RecommendedLoc recommendedLoc = recommendedlocs[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: RecommendedContainer(
                    nationName: recommendedLoc.nationName,
                    ),
                  );
               },
              ),
            ),
          
          ],
          ),
                ),
        ),
      )
    );
  }
}