import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Design 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GettingStartedScreen(),
    );
  }
}

class GettingStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        flex: 1,
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/image1.jpg'),
                  ),
                ),
              ),
              Text(
                'This is our Title',
                style: TextStyle(
                  fontSize: 22,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Getting Started',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(13),
                  primary: Theme.of(context).primaryColor,
                  elevation: 5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account?',
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class GettingStartedScreen extends StatelessWidget {
//   double sHeight(BuildContext context) => MediaQuery.of(context).size.height;
//   double sWidth(BuildContext context) => MediaQuery.of(context).size.width;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           color: Colors.white,
//           child: Padding(
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               children: [
//                 Column(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             width: 200,
//                             height: 200,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               image: DecorationImage(
//                                 image: AssetImage('assets/images/image1.jpg'),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 40,
//                           ),
//                           Text(
//                             'This is our Title',
//                             style: TextStyle(
//                               fontSize: 22,
//                               color: Theme.of(context).primaryColor,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text(
//                         'Getting Started',
//                         style: TextStyle(
//                           fontSize: 18,
//                         ),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         padding: EdgeInsets.all(13),
//                         primary: Theme.of(context).primaryColor,
//                         elevation: 5,
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Have an account?',
//                           style: TextStyle(fontSize: 18),
//                         ),
//                         TextButton(
//                             onPressed: () {},
//                             child: Text(
//                               'Login',
//                               style: TextStyle(fontSize: 18),
//                             )),
//                       ],
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class ScreenOne extends StatelessWidget {
  double sHeight(BuildContext context) => MediaQuery.of(context).size.height;
  double sWidth(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: sHeight(context),
        width: sWidth(context),
        margin: EdgeInsets.all(sHeight(context) * .025),
        padding: EdgeInsets.all(sHeight(context) * .035),
        // color: Colors.black,
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: sHeight(context) * .05,
              ),
              Icon(
                Icons.circle,
                size: sHeight(context) * .15,
                color: Colors.indigo[900],
              ),
              Text('F-Business'),
              SizedBox(
                height: sHeight(context) * .05,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: sHeight(context) * .5,
                  autoPlay: true,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Text(
                            'text $i',
                            style: TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: sHeight(context) * .05,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: sWidth(context) * .2,
                    vertical: sHeight(context) * .017,
                  ),
                  primary: Colors.indigo[900],
                  elevation: 5,
                  shadowColor: Colors.indigo[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CarouselLoading extends StatelessWidget {
  // const CarouselLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: Colors.grey[300],
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
