
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,

        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: false,
            title: const Text('WhatsApp',style: TextStyle(color: Colors.white),),
            bottom: const TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.teal,
              tabs: [
                Tab(

                  child:Icon(Icons.camera_alt),
                ),
                Tab(
                  child:Text('Chats'),
                ),
                Tab(
                  child:Text('Updates'),
                ),
                Tab(
                  child:Text('Call'),
                ),



              ],
            ),
            actions:  [
              const Icon(Icons.camera_alt_outlined,color: Colors.white,),


              const SizedBox(width: 20,),
              const Icon(Icons.search,color: Colors.white,),
              const SizedBox(width: 10,),
              PopupMenuButton(
                color: Colors.white,
                icon: const Icon(Icons.more_vert_outlined,color: Colors.white,),
                itemBuilder: (context)=>[

                  const PopupMenuItem(
                    value: '1',


                    child: Text('New group'),
                  ),
                  const PopupMenuItem(
                    value: '2',
                    child: Text('New broadcast'),
                  ),
                  const PopupMenuItem(
                    value: '3',
                    child: Text('Linked devices'),
                  ),
                  const PopupMenuItem(
                    value: '4',
                    child: Text('Starred messages'),
                  ),
                  const PopupMenuItem(
                    value: '5',
                    child: Text('Payments'),
                  ),
                  const PopupMenuItem(
                    value: '6',
                    child: Text('Settings'),
                  ),
                ],
              ),

              const SizedBox(width: 10,),

            ],
          ),
          body:  TabBarView(

            children: [
              const Text('Camera'),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index){
                    return const ListTile(
                      title: Text('Ajay Dewangan'),
                      subtitle: Text('Where is my Dog?'),
                      trailing:Text('12:00 PM') ,
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    );
                  }),

              ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context,index){

                    if (index == 0 ){
                      return  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:  [

                              Padding(
                                padding: EdgeInsets.only(top: 10,left: 20),
                                child: Text('Updates',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600) ,),

                              ),

                              SizedBox(width: 290,),
                              Icon(Icons.more_vert_outlined),
                            ],
                          ),

                          ListTile(
                            title: const Text('My Status'),
                            subtitle: const Text('1 hour ago'),
                            trailing:const Text('12:00 PM') ,
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.teal,
                                      width: 3
                                  )
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage('https://images.pexels.com/photos/1759531/pexels-photo-1759531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                          ),
                        ],
                      );

                    }
                    else{
                      return  ListTile(
                        title: const Text('My Status'),
                        subtitle: const Text('1 hour ago'),
                        trailing:const Text('12:00 PM') ,
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 3
                              )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/1759531/pexels-photo-1759531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                      );

                    }
                  }),

              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return  ListTile(
                      title: const Text('Ajay Dewangan'),
                      subtitle: Row(

                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(  index/2==0 ? (Icons.call_received_outlined) : Icons.call_made_outlined, color: Colors.red,size: 20),
                          const SizedBox(width: 10,),
                          Text(index/2==0 ? 'You missed audio call' : '8 January 21:50')
                        ],
                      ),
                      trailing: Icon( index/2==0 ? Icons.phone : Icons.video_call ) ,
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/1759531/pexels-photo-1759531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    );
                  }),




            ],
          ),


        ));
  }
}
