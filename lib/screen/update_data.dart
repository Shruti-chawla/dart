import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http ;

void main() {
  runApp(const MyApp());
}
class UpdateData extends StatefulWidget {
  const UpdateData({Key? key}) : super(key: key);

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController aadharController = TextEditingController();
  final TextEditingController voterIdController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();

  File? fileImage;
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> getImage() async {
    final image = await _imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      if (image != null) {
        fileImage = File(image.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Data'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.amber,
              Colors.white,
              Colors.green,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                fileImage == null
                    ? const Text("No Image Selected")
                    : Image.file(fileImage!),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: nameController,
                        decoration: const InputDecoration(labelText: 'Enter Name'),
                      ),
                      TextField(
                        controller: aadharController,
                        decoration:
                        const InputDecoration(labelText: 'Enter Aadhar No.'),
                      ),
                      TextField(
                        controller: voterIdController,
                        decoration: const InputDecoration(
                            labelText: 'Enter Voter ID Card No.'),
                      ),
                      TextField(
                        controller: mobileController,
                        decoration:
                        const InputDecoration(labelText: 'Enter Mobile No.'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final String name = nameController.text;
                          final String aadharNo = aadharController.text;
                          final String voterId = voterIdController.text;
                          final String mobileNo = mobileController.text;

                          ('Name: $name');
                          ('Aadhar No: $aadharNo');
                          ('Voter ID: $voterId');
                          ('Mobile No: $mobileNo');
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        backgroundColor: Colors.blue,
        child: const Icon(Icons.camera_alt),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    aadharController.dispose();
    voterIdController.dispose();
    mobileController.dispose();
    super.dispose();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Update Data App'),
        ),
        body: const UpdateData(),
      ),
    );
  }
}
