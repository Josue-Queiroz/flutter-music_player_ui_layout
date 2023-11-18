import 'package:flutter/material.dart';
import 'package:music_player_ui/components/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                // back button and menu botton
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: NewBox(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text("P L A Y L I S T"),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: NewBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                // cover art, artist name, song name
                NewBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset('lib/images/acustic.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Acustic song",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.grey.shade700),
                                ),
                                const SizedBox(height: 6),
                                const Text(
                                  "New Day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                //start time, shuffle button, repeat button, end time
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("00:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("5:20"),
                  ],
                ),
                const SizedBox(height: 40),
                // line bar progress
                NewBox(
                  child: LinearPercentIndicator(
                    barRadius: const Radius.circular(10),
                    lineHeight: 10,
                    percent: 0.2,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),

                const SizedBox(height: 40),
                //preview song, pause play, skip next song
                const SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                          child: NewBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      )),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: NewBox(
                              child: Icon(
                                Icons.play_arrow,
                                size: 32,
                              ),
                            ),
                          )),
                      Expanded(
                          child: NewBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 32,
                        ),
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
