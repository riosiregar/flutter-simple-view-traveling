import 'package:darkmodeimplement/data/list-recommended.dart';
import 'package:darkmodeimplement/data/list_popular.dart';
import 'package:darkmodeimplement/data/padding_tamplate.dart';
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
            padding: EdgeInsets.only(top: 100.0, bottom: 20.0),
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
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(.3),
                            letterSpacing: 1.0,
                          ),
                          text: "Explore\n",
                          children: [
                            TextSpan(
                              style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.white,
                              ),
                              text: "Indonesia",
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 35.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: _paddingWidth,
                    top: 50.0,
                    bottom: 12.0,
                  ),
                  child: Text("Popular Now"),
                ),
                Container(
                  height: 250.0,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: listPopulars.length,
                    itemBuilder: (BuildContext context, int index) {
                      ListPopular listPopular = listPopulars[index];
                      return Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: PopularNowContainer(
                          locationName: listPopular.locationName,
                          cityName: listPopular.cityName,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: _paddingWidth,
                    top: 24.0,
                    bottom: 12.0,
                  ),
                  child: Text("Recommended Countries"),
                ),
                Container(
                  height: 90.0,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: recommendedLocs.length,
                    itemBuilder: (BuildContext context, int index) {
                      RecommendedLoc recommendedLoc = recommendedLocs[index];
                      return Padding(
                        padding: EdgeInsets.only(left: 12.0),
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
      ),
    );
  }
}