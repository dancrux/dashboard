import 'package:dashboard/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home: Dashboard()
));

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10)
    ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30),
          ),
          child: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Image.asset('assets/images/home.png'),
                label: "Home"),
            BottomNavigationBarItem(icon: Image.asset('assets/images/heart.png'),
                label: "Favourites"),
            BottomNavigationBarItem(icon: Image.asset('assets/images/message.png'),
                label: "Message"),
            BottomNavigationBarItem(icon: Image.asset('assets/images/person.png'),
                label: "Account")
          ],
          ),
        )


      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0),
          // alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _profileImage(),
                    Container(
                        margin: EdgeInsets.only( right: 32.0),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Image(image: AssetImage('assets/images/notification_icon.png'),
                              ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: Image(image: AssetImage('assets/images/notification.png'),),
                            ),

                          ],
                        ),

                    )

                  ],
                ) ,
              Padding(padding: const EdgeInsets.only(top: 19.0, left:  32.0),
                  child: Text(
                    "Spouse Finder",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal
                    ),
                  )
              ),
              Container(
                width: 350.0,
                height: 50.0,
                margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xffEFEFF2),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 16.0),
                      child: Image(image: AssetImage('assets/images/search.png'),
                      width: 23.51,
                        height: 24.0,
                      ),
                    ),
                    Text(
                      "Search partner",
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.poppins(
                          color: Color(0xffC4C4C4),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40.0, left: 30.0),
                  child: _myStoryImage()
              ),
              Padding(
                padding: const EdgeInsets.only(top:23.0, left: 35.0, right: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discover",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                    Text(
                      "View All",
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.poppins(
                          color: Color(0xffEC5873),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19.0, bottom: 32.0),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 76.0, right: 32.0, top: 21.0),
                      width:  306.0,
                      height:  299.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                          image: AssetImage('assets/images/behind_center_picture.png')
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 32.0, right: 47.0,bottom: 12.0),
                      width:  335.0,
                      height:  335.0,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                          image: AssetImage('assets/images/bottom_rectangle.png')
                        )
                      ),
                      child: Image.asset('assets/images/center_picture.png'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 244.96,  top: 24.21, right: 19.0),
                      alignment: Alignment.center,
                      width: 70.68,
                      height: 32.92,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEC5873)
                      ),
                      child: Text(
                        "1.7Km",
                        textDirection: TextDirection.ltr,
                        style: GoogleFonts.poppins(
                            color: Color(0xffffffff),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 248.0, left: 39.0),
                      child: Column(
                        children: [
                          Text(
                            "Ganiyah Hamad, 22",
                            textDirection: TextDirection.ltr,
                            style: GoogleFonts.poppins(
                                color: Color(0xffffffff),
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Sr. UX Designer at Google",
                              textDirection: TextDirection.ltr,
                              style: GoogleFonts.poppins(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _myStoryImage() {
    return Container(

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6.0),
                        width: 73.0,
                        height: 72.0,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                              color:  Color(0xFFEC5873),
                              width: 1.2
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/second_story.png'),
                              fit: BoxFit.fill
                          ),
                        ),
                      child: Image(image: AssetImage(
                        'assets/images/plus_icon.png'
                      ),
                        width: 20.0,
                        height: 20.0,

                      )

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Container(
                          width: 73.0,
                          height: 72.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            border: Border.all(
                                color:  Color(0xFFEC5873),
                                width: 1.2
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/profile_image.png'),
                                fit: BoxFit.fill
                            ),
                          )

                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 6.0),
                        width: 69.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                              color:  Color(0xFFEC5873),
                              width: 1.2
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/third_story.png'),
                              fit: BoxFit.fill
                          ),
                        )

                    ),
                    Container(
                        margin: EdgeInsets.only(right: 1.0),
                        width: 73.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                              color:  Color(0xFFEC5873),
                              width: 1.2
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/third_story.png'),
                              fit: BoxFit.fill
                          ),
                        )

                    ),
                    Container(
                        margin: EdgeInsets.only(right: 1.0),
                        width: 73.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                              color:  Color(0xFFEC5873),
                              width: 1.2
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/third_story.png'),
                              fit: BoxFit.fill
                          ),
                        )

                    ),
                  ],
                ),
              ),
    );
  }
}

Container _profileImage(){
  return Container(
    width: 46.0,
    height: 45.0,
      margin: EdgeInsets.only(left: 32.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      border: Border.all(
        color:  Color(0xFFEC5873),
          width: 1.2
      ),
      image: DecorationImage(
        image: AssetImage(
            'assets/images/profile_image.png'),
        fit: BoxFit.scaleDown
        ),
      )

    );

}



