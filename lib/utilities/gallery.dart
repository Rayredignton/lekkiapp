
import 'package:flutter/material.dart';
import 'package:lekkiapp/core/models/get_property_model.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gallery extends StatefulWidget {
  final PropertyData data;
  const Gallery({Key? key, required this.data}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        PageView.builder(
            itemCount: widget.data.images!.length,
            scrollDirection: Axis.horizontal,
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 343.w,
                height: 309.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(widget.data.images![index].path!),
                    fit: BoxFit.cover,
                  ),
                ),
                child:  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                       
                       
                        
                      ],
                    )
                  ],
                ),
              );
            }),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 17 : 6,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.grey,
          borderRadius: BorderRadius.circular(10)
          // shape: BoxShape.circle
          ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i <= widget.data.images!.length-1; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
