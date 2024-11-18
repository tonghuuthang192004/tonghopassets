import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tonghop_assets/pages/home_pages.dart';
import 'package:tonghop_assets/values/app_asstes.dart';
import 'package:tonghop_assets/values/app_color.dart';
import 'package:tonghop_assets/values/app_style.dart';

class LadingPages extends StatelessWidget {
  const LadingPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(child:
           Container(
             child: Text('Welcome To',style:AppStlyes.h3),
             alignment: Alignment.centerLeft,

           )
            ),
            Expanded(child:
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'English',style: AppStlyes.h2.copyWith(
                    color: AppColor.blackGrey,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text('Qoutues',
                      textAlign: TextAlign.end,
                      style:
                      AppStlyes.h4.copyWith(
                        height:0.5),
                    ),
                  )

                ],
              ),


            )
            ),

            Expanded(child:Container(

              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 72),
                child: RawMaterialButton(
                    onPressed: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => HomePage(),
                      //   ),
                      // );
                      // cái tren đó đúng mà giờ tui không muốn nó quay lại nữa
                      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (_)=>HomePage()),(router)=>false);
                      // vào thăn luôn

                },
                  child: Image.asset(Appassets.tenanh,width: 30,color: AppColor.lightBule
                  ),
                  shape: CircleBorder(),
                ),
              ),
            )

            )

          ],
        ),
      ),
    );
  }
  Widget buildIndicator(bool isActive,Size size)
  {
    return Container(
      width: isActive?size*,
    )
  }
}
