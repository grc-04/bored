// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import './movies.dart';

// ignore: unused_element
class ActionM with ChangeNotifier {
  List<Movie> _actionmovies = [
    Movie(
        title: "Avengers:Endgame",
        description: """After Thanos, an intergalactic warlord, disintegrates 
            half of the universe, the Avengers must reunite and 
            assemble again to reinvigorate their trounced allies and 
            restore balance.""",
        rating: 8.4,
        imageUrl:
            "https://wwwimage-us.pplusstatic.com/thumbnails/photos/370-q80/movie_asset/87/18/37/wom_salone_poster_1400x2100.jpg"),
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
            "https://i.pinimg.com/originals/6e/e3/68/6ee368fb71e49bda6cf1019a4eebf00a.jpg"),
    Movie(
        title: "Dr.Strange and The Multiverse Of Madness",
        description: """Dr Stephen Strange casts a forbidden spell that
         opens a portal to the multiverse. However, a threat emerges 
         that may be too big for his team to handle.""",
        rating: 7.8,
        imageUrl:
            "https://www.al.com/resizer/HOGvccesl9jnU6SpFesBg8DaJEE=/1280x0/smart/advancelocal-adapter-image-uploads.s3.amazonaws.com/expo.advance.net/img/9f6f467a85/width2048/8f1_hobbsandshaw.jpeg"),
    Movie(
        title: "John Wick:Chapter 3",
        description: """
John Wick is declared excommunicado and a hefty bounty is set on him
 after he murders an international crime lord.He sets out to seek 
 help to save himself from ruthless hitmen and bounty hunters.""",
        rating: 7.4,
        imageUrl: "http://timesofindia.indiatimes.com/photo/69476781.cms"),
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
            "https://i.pinimg.com/236x/fe/e5/ba/fee5ba1b0199a89718e44d0fd721352c.jpg"),
    Movie(
        title: "Dune",
        description: """
Paul Atreides arrives on Arrakis after his father accepts the 
stewardship of the dangerous planet.However, chaos ensues after a 
betrayal as forces clash to control melange, a precious resource.""",
        rating: 8.1,
        imageUrl:
            "https://api.time.com/wp-content/uploads/2016/12/justice-league.jpg?quality=85&w=400&h=628&crop=1"),
  ];
  List<Movie> get actionmovies {
    return [..._actionmovies];
  }
}
