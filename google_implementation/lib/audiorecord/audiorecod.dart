import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

class Audiorecod extends StatefulWidget {
  const Audiorecod({super.key});

  @override
  State<Audiorecod> createState() => _AudiorecodState();
}

class _AudiorecodState extends State<Audiorecod> {
  final AudioPlayer audioPlayer = AudioPlayer();
  final AudioRecorder audioRecorder = AudioRecorder();
  bool isrecording = false, isplaying = false;
  String? recordingpath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(),
      floatingActionButton: _recordingbutton(),
    );
  }

  Widget _buildUI() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (recordingpath != null)
            MaterialButton(
              onPressed: () async {
                // if (audioPlayer.playing) {
                //   audioPlayer.stop();
                //   setState(() {
                //     isplaying = false;
                //   });
                // } else {
                //   await audioPlayer.setFilePath(recordingpath!);
                //   audioPlayer.play();
                //   setState(() {
                //     isplaying = true;
                //   });
                // }
              },
              color: Theme.of(context).colorScheme.primary,
              child: Text(isplaying
                  ? "stop Playing recording"
                  : 'Start playing recording'),
            ),
          if (recordingpath == null) const Text(' no recroding found')
        ],
      ),
    );
  }

  Widget _recordingbutton() {
    return FloatingActionButton(
      onPressed: () async {
        if (isrecording) {
          String? filePath = await audioRecorder.stop();
          if (filePath != null) {
            setState(() {
              isrecording;
              false;
              recordingpath = filePath;
            });
          }
        } else {
          if (await audioRecorder.hasPermission()) {
            final Directory appDocumentDir =
                await getApplicationDocumentsDirectory();
            final String filpath = p.join(appDocumentDir.path, 'recording.wav');
            await audioRecorder.start(const RecordConfig(), path: filpath);
            setState(() {
              isrecording;
              true;
              recordingpath = null;
            });
          }
        }
      },
      child: Icon(isrecording ? Icons.stop : Icons.mic),
    );
  }
}
