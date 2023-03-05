import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_forward/src/constant/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final audio = AssetsAudioPlayer();
  @override
  void initState() {
    addIn();
    super.initState();
  }

  addIn() {
    audio.open(Audio('assets/hmm.mp3'));
  }

  start() {
    audio.play();
  }

  pause() {
    audio.pause();
  }

  stop() {
    audio.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: whiteColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              padding: const EdgeInsets.only(left: 8),
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
        ),
        title: const Text(
          'Flutter Forward',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 14),
            child: const Icon(
              Icons.notification_add,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.network(
            'https://img.freepik.com/free-vector/app-development-concept-illustration_114360-5164.jpg?w=740&t=st=1678028015~exp=1678028615~hmac=89ea5a456865e81ca31bd70cc99a8bc968033c1609bca096c5b75cd5d0370f54',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.heart_broken,
                  color: Colors.red,
                ),
                Column(
                  children: const [
                    Text('Hmm for the Weekend'),
                    Text('Codeplay'),
                  ],
                ),
                const Icon(
                  Icons.plus_one,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      start();
                    },
                    child: const Text('Start'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      pause();
                    },
                    child: const Text('pause'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      stop();
                    },
                    child: const Text('Stop'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
