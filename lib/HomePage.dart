import 'package:flutter/material.dart';
import 'DetailMovie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Movie>? movie = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Movie kaisen = new Movie('assets/kaisen.jpeg', 'Jujutsu Kaisen', '2021', '1 jam 45 menit', 'Anime, Fantasi, Aksi', '8.5 / 10');
    Movie dragonball = new Movie('assets/dragonballsuper.jpg', 'DragonBall SuperHero', '2022', '1 jam 40 menit', 'Anime, Action, Adventure', '8.1 / 10');
    Movie naruto = new Movie('assets/narutomovie.jpg', 'Naruto The Last Movie', '2014', '1 jam 52 menit', 'Anime, Adventure, Action', '7.7 / 10');
    Movie spongebob = new Movie('assets/spongebobs.jpg', 'Spongebob Movie', '2020', '1 jam 23 menit', 'Adventure, Animasi, Komedi', '8.7 / 10');
    Movie dragon = new Movie('assets/dragon.jpg', 'How To Train Your Dragon', '2010', '1 jam 38 menit', 'Action, Adventure, Animation', '8.1 / 10');
    Movie ironman = new Movie('assets/ironman.jpg', 'Ironman 3', '2013', '2 jam 10 menit', 'Action, Adventure, Fantasy', '9.0 / 10');
    Movie incredibles = new Movie('assets/incredibles.jpg', 'The Incredibles', '	2004', '1 jam 45 menit', 'Comedy, Adventure, Animation', '8.4 / 10');
    Movie spiderman = new Movie('assets/Spiderman.jpg', 'Spiderman No Way Home', '2021', '2 jam 28 menit', 'Action, Adventure, Fantasi', '8.6 / 10');
    Movie harrypotter = new Movie('assets/harrypotter4.jpg', 'Harry Potter 4', '2005', '2 jam 37 menit', 'Adventure, Fantasi, Misteri', '8.1 / 10');
    Movie nemo = new Movie('assets/nemo.png', 'Finding Nemo', '2003', '1 jam 40 menit', 'Adventure, Comedy, Animation', '8.2 / 10');

    movie?.add(kaisen);
    movie?.add(dragonball);
    movie?.add(naruto);
    movie?.add(spongebob);
    movie?.add(dragon);
    movie?.add(ironman);
    movie?.add(incredibles);
    movie?.add(spiderman);
    movie?.add(harrypotter);
    movie?.add(nemo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My List Movie')),
      body: Center(
        child: Container(
          child: ListView.builder(
            padding: EdgeInsets.only(),
            itemCount: movie?.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.grey, width: 2),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(top: 19, bottom: 19, left: 30),
                    leading: Container(
                      width: 90,
                      height: 210,
                      child: Image.asset(
                        movie![index].gambar,
                        fit: BoxFit.cover,// Mengatur agar gambar sesuai dengan lebar dan tinggi yang diatur
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Text(
                          movie![index].judul,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text('Rilis : ' + movie![index].rilis,),
                        Text('Durasi : ' + movie![index].durasi),
                        Text('Genre : ' + movie![index].genre),
                        Text('Rating : ' + movie![index].rating),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}