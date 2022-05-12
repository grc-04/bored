// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import './movies.dart';

class ComedyM with ChangeNotifier {
  List<Movie> _comedylist = [
    Movie(
        title: "Avengers:Endgame",
        description: """After Thanos, an intergalactic warlord, disintegrates 
            half of the universe, the Avengers must reunite and 
            assemble again to reinvigorate their trounced allies and 
            restore balance.""",
        rating: 8.4,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BMjA0ODYwNzU5Nl5BMl5BanBnXkFtZTcwNTI1MTgxMw@@._V1_.jpg"),
    Movie(
        title: "No time to Die",
        description: """James Bond is enjoying a tranquil life in Jamaica after 
            leaving active service. However, his peace is short-lived as 
            his old CIA friend, Felix Leiter, shows up and asks for help. 
            The mission to rescue a kidnapped scientist turns out to be 
            far more treacherous than expected, leading Bond on the trail 
            of a mysterious villain who's armed with a dangerous new 
            technology.""",
        rating: 7.3,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BMzE2MzEzNDc5M15BMl5BanBnXkFtZTcwMzYxOTA3MQ@@._V1_.jpg"),
    Movie(
        title: "Dr.Strange and The Multiverse Of Madness",
        description: """Dr Stephen Strange casts a forbidden spell that
         opens a portal to the multiverse. However, a threat emerges 
         that may be too big for his team to handle.""",
        rating: 7.8,
        imageUrl:
            "https://www.sonypictures.com/sites/default/files/styles/max_560x840/public/chameleon/title-movie/245762_THATS%20MY%20BOY%20%282012%29_1400x2100%20UV_Eng.jpg?itok=1mdAjJYd"),
    Movie(
        title: "John Wick:Chapter 3",
        description: """
John Wick is declared excommunicado and a hefty bounty is set on him
 after he murders an international crime lord.He sets out to seek 
 help to save himself from ruthless hitmen and bounty hunters.""",
        rating: 7.4,
        imageUrl:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQEUMqXik1Ntuc2NTpCgbX2JENwlZD3kwDZa4nDm6TCkXVX9FvU"),
    Movie(
        title: "The Batman",
        description:
            """Batman ventures into Gotham City's underworld when a sadistic killer 
            leaves behind a trail of cryptic clues. As the evidence begins to lead 
            closer to home and the scale of the perpetrator's plans become clear, 
            he must forge new relationships, unmask the culprit and bring justice 
            to the abuse of power and corruption that has long plagued the 
            metropolis.
""",
        rating: 8.0,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BNjZjNDE1NTYtYTgwZS00M2VmLWEyODktM2FlNjhiYTk3OGU2XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg"),
    Movie(
        title: "Dune",
        description: """
Paul Atreides arrives on Arrakis after his father accepts the 
stewardship of the dangerous planet.However, chaos ensues after a 
betrayal as forces clash to control melange, a precious resource.""",
        rating: 8.1,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BYzE5MjY1ZDgtMTkyNC00MTMyLThhMjAtZGI5OTE1NzFlZGJjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_FMjpg_UX1000_.jpg"),
  ];
  List<Movie> get comedymovies {
    return [..._comedylist];
  }
}
