// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import './movies.dart';

class Movies with ChangeNotifier {
  List<Movie> _movies = [
    Movie(
        title: "Avengers:Endgame",
        description: """After Thanos, an intergalactic warlord, disintegrates 
            half of the universe, the Avengers must reunite and 
            assemble again to reinvigorate their trounced allies and 
            restore balance.""",
        rating: 8.4,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg"),
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
            "https://m.media-amazon.com/images/M/MV5BYWQ2NzQ1NjktMzNkNS00MGY1LTgwMmMtYTllYTI5YzNmMmE0XkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_.jpg"),
    Movie(
        title: "Dr.Strange and The Multiverse Of Madness",
        description: """Dr Stephen Strange casts a forbidden spell that
         opens a portal to the multiverse. However, a threat emerges 
         that may be too big for his team to handle.""",
        rating: 7.8,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_FMjpg_UX1000_.jpg"),
    Movie(
        title: "John Wick:Chapter 3",
        description: """
John Wick is declared excommunicado and a hefty bounty is set on him
 after he murders an international crime lord.He sets out to seek 
 help to save himself from ruthless hitmen and bounty hunters.""",
        rating: 7.4,
        imageUrl:
            "https://mir-s3-cdn-cf.behance.net/project_modules/fs/b3c40a78219513.5cc812e957de6.jpg"),
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
            "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRBkxgl2A2PhE_6tklFLT0bxn5NLhvhsnpXGhmXBt_zotrlVHmo"),
    Movie(
        title: "Dune",
        description: """
Paul Atreides arrives on Arrakis after his father accepts the 
stewardship of the dangerous planet.However, chaos ensues after a 
betrayal as forces clash to control melange, a precious resource.""",
        rating: 8.1,
        imageUrl:
            "https://www.dolby.com/siteassets/xf-site/content-detail-pages/dune_in_dolby_poster.jpg"),
  ];
  List<Movie> get movies {
    return [..._movies];
  }
}
