import 'package:flutter/material.dart';
import 'package:weather_app/weatherData.dart';

import 'getLocation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var client = weatherData();
  var data;
  var dayInfo = DateTime.now();
  //var dateFormat = DateFormat('EEEE, d MMM , yyyy').format(dayInfo);

  info() async{
   // var position = await getPosition();
    //data = await client.getData(position.latitude, position.longitude);
    data = await client.getData('18.98','72.83');

    return data;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder(
        future: info(),
        builder: ((context,snapshot){
          return Container(
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  height: size.height * 0.75,
                  width: size.width,
                  padding: EdgeInsets.only(top: 30),
                  margin: EdgeInsets.only(right: 10,left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff955cd1),
                            Color(0xff3fa2fa)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [0.2,0.85]
                      )
                  ),
                  child: Column(
                    children: [
                      Text("${data?.CityName}",style: TextStyle(
                          color: Colors.white.withOpacity(0.9),fontSize: 35,fontFamily: 'MavenPro'
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Monday,10 March",style: TextStyle(
                          color: Colors.white.withOpacity(0.9),fontSize: 15,fontFamily: 'MavenPro'
                      ),),
                      //Image.asset('assets/sunny.png',width: size.width*0.4,),
                      Image.network('https:${data?.icon}',width: size.width*0.36,fit: BoxFit.fill,),
                      SizedBox(
                        height: 05,
                      ),
                      Text('${data?.condition}',style: TextStyle(
                          color: Colors.white,fontSize: 40,fontFamily: 'Hubballi',fontWeight: FontWeight.w600
                      ),),
                      SizedBox(
                        height: 05,
                      ),
                      Text("${data?.tem}°",style: TextStyle(
                          color: Colors.white,fontSize: 70,fontFamily: 'Hubballi',fontWeight: FontWeight.w800
                      ),),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(child: Column(children: [
                            Image.asset('assets/storm.png',width: size.width*0.15,color: Colors.white,),
                            Text("${data?.wind} km/h",style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Hubballi',
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 5,),
                            Text("Wind",style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontFamily: 'MavenPro',
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),)
                          ],)),

                          Expanded(child: Column(children: [
                            Image.asset('assets/humidity.png',width: size.width*0.13,color: Colors.white,),
                            Text("${data?.humidity}",style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Hubballi',
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 5,),
                            Text("Humidity",style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontFamily: 'MavenPro',
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),)
                          ],)),

                          Expanded(child: Column(children: [
                            Image.asset('assets/wind_flag_storm.png',width: size.width*0.13),
                            Text("${data?.wind_dir}",style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Hubballi',
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 5,),
                            Text("Wind Direction",style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontFamily: 'MavenPro',
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),)
                          ],)),


                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Expanded(child: Column(
                      children: [
                        Text('Gust',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 17,fontFamily: 'MavenPro'
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('${data?.guest} kp/h',style: TextStyle(color: Colors.white,fontSize: 23,fontFamily: 'MavenPro'
                        ),),
                      ],
                    )),

                    Expanded(child: Column(
                      children: [
                        Text('UV',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 17,fontFamily: 'MavenPro'
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('${data?.uv}',style: TextStyle(color: Colors.white,fontSize: 23,fontFamily: 'MavenPro'
                        ),),
                      ],
                    )),

                    Expanded(child: Column(
                      children: [
                        Text('Wind',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 17,fontFamily: 'MavenPro'
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('${data?.wind} km/h',style: TextStyle(color: Colors.white,fontSize: 23,fontFamily: 'MavenPro'
                        ),),
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),


                Row(
                  children: [
                    Expanded(child: Column(
                      children: [
                        Text('Pressure',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 17,fontFamily: 'MavenPro'
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('${data?.pressure} hpa',style: TextStyle(color: Colors.white,fontSize: 23,fontFamily: 'MavenPro'
                        ),),
                      ],
                    )),

                    Expanded(child: Column(
                      children: [
                        Text('Precipitation',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 17,fontFamily: 'MavenPro'
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('${data?.pricipe}',style: TextStyle(color: Colors.white,fontSize: 23,fontFamily: 'MavenPro'
                        ),),
                      ],
                    )),

                    Expanded(child: Column(
                      children: [
                        Text('Last Update',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 17,fontFamily: 'MavenPro'
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('${data?.last_update}',style: TextStyle(color: Colors.green,fontSize: 17,fontFamily: 'MavenPro'
                        ),),
                      ],
                    )),
                  ],
                )

              ],
            ),
          );
        }),
      )
    );
  }
}
