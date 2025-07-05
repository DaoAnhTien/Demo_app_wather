import 'dart:io';
import 'dart:ui' as ui;
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ImageDownloadService {
  static Future<Map<String, dynamic>> downloadAndCropImage(
      String imageUrl) async {
    try {
      final result = await _performDownloadAndCrop(imageUrl);
      return result;
    } catch (e) {
      return {'error': e.toString()};
    }
  }

  static Future<Map<String, dynamic>> _performDownloadAndCrop(
      String imageUrl) async {
    final response = await http.get(Uri.parse(imageUrl));
    if (response.statusCode != 200) {
      throw Exception('Không thể tải ảnh: HTTP ${response.statusCode}');
    }

    final codec = await ui.instantiateImageCodec(response.bodyBytes);
    final frame = await codec.getNextFrame();
    final image = frame.image;

    if (image.width <= 0 || image.height <= 0) {
      throw Exception(
          'Ảnh không hợp lệ: kích thước ${image.width}x${image.height}');
    }

    final newWidth = (image.width / 2).round();
    final newHeight = (image.height / 2).round();

    if (newWidth <= 0 || newHeight <= 0) {
      throw Exception(
          'Kích thước ảnh sau khi cắt không hợp lệ: ${newWidth}x${newHeight}');
    }

    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder,
        ui.Rect.fromLTWH(0, 0, newWidth.toDouble(), newHeight.toDouble()));

    canvas.drawImageRect(
      image,
      ui.Rect.fromLTWH(
          0, 0, newWidth.toDouble(), newHeight.toDouble()), // Source: nửa trái
      ui.Rect.fromLTWH(0, 0, newWidth.toDouble(),
          newHeight.toDouble()), // Destination: toàn bộ canvas
      ui.Paint()
        ..filterQuality = ui.FilterQuality.high
        ..isAntiAlias = true,
    );

    final picture = recorder.endRecording();
    final croppedImage = await picture.toImage(newWidth, newHeight);

    final byteData =
        await croppedImage.toByteData(format: ui.ImageByteFormat.png);
    if (byteData == null) {
      throw Exception('Không thể chuyển đổi ảnh thành bytes');
    }
    final croppedBytes = byteData.buffer.asUint8List();

    final downloadsDir = await getDownloadsDirectory();
    if (downloadsDir == null) {
      throw Exception('Không thể truy cập thư mục Downloads');
    }

    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final fileName = 'cropped_${newWidth}x${newHeight}_$timestamp.png';
    final file = File('${downloadsDir.path}/$fileName');

    await file.writeAsBytes(croppedBytes);

    final result = {
      'filePath': file.path,
      'originalSize': response.bodyBytes.length,
      'croppedSize': croppedBytes.length,
    };

    return result;
  }
}
