import 'package:flutter/material.dart';
import 'package:tonghop_assets/values/app_asstes.dart';
import 'package:tonghop_assets/values/app_color.dart';
import 'package:tonghop_assets/values/app_style.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Size size =MediaQuery.of(context).size;// chia tỉ lệ , lấy cái size
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.lightBule,

        appBar: AppBar(
          backgroundColor: AppColor.lightBule,
          elevation: 0,
          // InkWell là sự kiện , cho phép ta nhập sự kiện onclick
          leading: InkWell(
            onTap: (){

            },
            child: Image.asset(Appassets.tenanh,height: 20,width: 20,),

          ),


          title: Container

            (child: Text('English To day',style: AppStlyes.h4.copyWith(
            color: AppColor.primarycolor,fontSize: 36
          )),
            alignment: Alignment.center,
          ),
        ),

        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity, // chiếm toàn bộ không gian có sãn
          child: Column(
            children: [
              Container(
                   // height: size.height*1/8,
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.topLeft,
                  child: Text('it is a amazing how comple is the delusion that beauty is goodness',
                    style: AppStlyes.h5.copyWith(
                      fontSize: 12,
                      color: AppColor.textColor
                    ),
                  ),
              ),
              Container(
                height: size.height*2/3,
                // color: Colors.red,
                // vuốt ngang bay view
                child: PageView.builder(itemBuilder:(context,index){
                  return Container(
                    // padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColor.primarycolor,
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        Container(
                          

                            child: Image.asset(Appassets.tenanh,width:30,),
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(12),

                        ),
                        RichText(
                            text: TextSpan(

                          text: "B",
                                style: TextStyle(
                                    fontFamily: FontFamily.sen,
                                    fontSize: 89,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.black38,// đổ bóng
                                          offset:Offset(3, 10),
                                          blurRadius: 6// đổ bóng
                                      )
                                    ]
                                ),

                          children: [

                            TextSpan(
                              text: "eutiful",style: TextStyle(
                                fontFamily: FontFamily.sen,
                                fontSize: 70,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  BoxShadow(
                                      color: Colors.black38,// đổ bóng
                                      offset:Offset(3, 10),
                                      blurRadius: 6// đổ bóng
                                  )
                                ]
                            ),
                            )
                          ]
                        ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                        ),
                        Padding(

                          padding: const EdgeInsets.only(left: 12,top: 24.0,right: 24.0,bottom: 24.0),
                          child: Text("think of the beauty still left around you and be happy",textAlign: TextAlign.start,style: AppStlyes.h4.copyWith(
                            color: AppColor.textColor,
                            letterSpacing: 1

                          ),),
                        )

                      ],
                    ) ,
                  );
                } ,itemCount: 5,
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.primarycolor,
          onPressed: (){
            print('exchange');
          },
          child: Image.asset(Appassets.tenanh),),
      ),
    );
  }
}
