// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import './movies.dart';

// ignore: unused_element
class ThrillerM with ChangeNotifier {
  List<Movie> _thrillermovies = [
    Movie(
        title: "Avengers:Endgame",
        description: """After Thanos, an intergalactic warlord, disintegrates 
            half of the universe, the Avengers must reunite and 
            assemble again to reinvigorate their trounced allies and 
            restore balance.""",
        rating: 8.4,
        imageUrl:
            "https://img.republicworld.com/republic-prod/stories/images/15761228025df1b9b2eb127.jpg"),
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
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/en-us-intrsn-main-vertical-27x40-rgb-pre-1646151073.jpg?crop=1xw:0.8438343834383438xh;center,top&resize=480:*"),
    Movie(
        title: "Dr.Strange and The Multiverse Of Madness",
        description: """Dr Stephen Strange casts a forbidden spell that
         opens a portal to the multiverse. However, a threat emerges 
         that may be too big for his team to handle.""",
        rating: 7.8,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BMjJiYjdjNWEtODNiMS00MTBiLWE4NTAtNGNjMDgxZWQzMTgyXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg"),
    Movie(
        title: "John Wick:Chapter 3",
        description: """
John Wick is declared excommunicado and a hefty bounty is set on him
 after he murders an international crime lord.He sets out to seek 
 help to save himself from ruthless hitmen and bounty hunters.""",
        rating: 7.4,
        imageUrl:
            "https://m.media-amazon.com/images/M/MV5BMDJiNzUwYzEtNmQ2Yy00NWE4LWEwNzctM2M0MjE0OGUxZTA3XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg"),
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
            "https://m.media-amazon.com/images/M/MV5BMTE2ODU4NDEtNmRjNS00OTk1LTg4NmMtNTAzYzVlNzJmYjgzXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg"),
    Movie(
        title: "Dune",
        description: """
Paul Atreides arrives on Arrakis after his father accepts the 
stewardship of the dangerous planet.However, chaos ensues after a 
betrayal as forces clash to control melange, a precious resource.""",
        rating: 8.1,
        imageUrl:
            "https://upload.wikimedia.org/wikipedia/en/c/c4/Life_%282017_film%29.png"),
  ];
  List<Movie> get thrillermovies {
    return [..._thrillermovies];
  }
}
