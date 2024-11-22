import 'package:flutter/material.dart';
import 'package:navigasi/views/profilview.dart';


class MenuBottom extends StatefulWidget {
  int activePage;
  MenuBottom(this.activePage);

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  int selectedItem = 0;
  void getLink(index){
    setState(() {
      selectedItem = index;
    });
    if(index == 0){
      Navigator.pushReplacementNamed(context, '/');
    }
    else if(index == 1){
       Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Profilview(
              nama: "Deco entol",
              alamat: "Madura",
              juara: 15,
            ),
          ),
       );
    }
    else if(index == 2){
       Navigator.pushReplacementNamed(
          context, '/transaksi',
          arguments:{
            "id":1,
            
            "product":"buah",
            "price":4000,
          }
       );
    }
    else if(index == 3){
       Navigator.pushReplacementNamed(
          context, '/Movie',
          arguments:{
            "id":1,
            "product":"buah",
            "price":4000,
          }
       );
    }
  } 
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor:Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: widget.activePage,
      onTap: getLink    ,
      items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home'
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile'
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.receipt),
        label: 'Transaksi'
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.video_camera_back),
        label: 'Movie'
        ),
    ]);
  }
}