import 'dart:io';

void main() {
  final videoFile = File('C:\Users\HP\Desktop\0-02-03-96ffb557fa8a27c6798c70cfca50df9962182327bb44abc88570954971d841fe_7e22e6b975fdf9cb.mp4');

  videoFile.create(recursive: true)
      .then((File file) {
    // The file has been created, you can write the video data to it
    // using the writeAsBytes method, for example.
  });
}
