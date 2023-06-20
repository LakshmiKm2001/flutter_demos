import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: Storage()));
}

class Storage extends StatefulWidget {
  @override
  State<Storage> createState() => _StorageState();
  
  static ref() {}
}

class _StorageState extends State<Storage> {

  FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Storage"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                    onPressed: () =>upload('camera'),
                    icon: Icon(Icons.camera),
                    label: Text("Camera")),

                ElevatedButton.icon(
                    onPressed: () =>upload('gallery'),
                    icon: Icon(Icons.photo),
                    label: Text("Gallery"))
              ],
            ),
            Expanded(
                child: FutureBuilder(  //automatically ui rebuilds according to frebse  data
              future: loadImage(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Map<String,dynamic>>> snapshot) {
                    if(snapshot.connectionState == ConnectionState.done){
                         return ListView.builder(
                          itemCount: snapshot.data?.length ?? 0,
                          itemBuilder: (context,index){
                            final Map<String,dynamic> image = snapshot.data![index];
                           return Card(
                            margin: EdgeInsetsDirectional.symmetric(vertical: 10),
                            child: ListTile(leading: Image.network(image['url']),
                            title: Text(image['uploaded_by']),
                            subtitle: Text(image['date']),
                            trailing: IconButton(onPressed: (){

                            }, icon: Icon(Icons.delete)),
                            ),
                           );
                    }); 
                    }
                      return Center(child:CircularProgressIndicator()); 
                 }
               )) 
          ],
        ),
      ),
    );
  }
  
  loadImage() {
   
  }
  
  Future<void>upload(String source) async {
    final picker = ImagePicker();
    XFile? pickedImage; //to fetch platform dependent path

     try{
      pickedImage = await picker.pickImage(
        source: source == "camera"? 
                ImageSource.camera :
                ImageSource.gallery,maxWidth: 1920);
      final String filename = path.basename(pickedImage!.path); //path name before /or
      File imageFile = File(pickedImage.path);  //actual path of picked data

      try{
        await storage.ref(filename).putFile(imageFile,
           SettableMetadata(
            customMetadata: {
              'uploaded By' :'A User',
              'date'        :'1/1/2021'
              })
        );
        setState(() { });
      }on FirebaseException catch(error){
        if(kDebugMode){
        print(error);
        }
      }
     }catch(e){
      print(e);
     }
  }
}
 Future<List<Map<String,dynamic>>> loadImage() async{
      List<Map<String,dynamic>> files = [];
      final ListResult result = await Storage.ref().tolist();
      final List<Reference> allfiles = result.items;

      await Future.forEach<Reference>(allfiles,(file)async{
        final String fileurl = await file.getDownloadURL();
        final FullMetadata filemeta = await file.getMetadata();
        files.add({
          "url" : fileurl,
          "path" : file.fullPath,
          "uploaded_by" : filemeta.customMetadata? ['uploaded_by'] ?? 'NoBody',
          "date" : filemeta.customMetadata? ['date'] ?? '00/00/000',
        });
      });
      return files;
 }
    
