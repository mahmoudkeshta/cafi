
import 'package:image_picker/image_picker.dart';

PickImage() async{
 final ImagePicker imagePicker =ImagePicker();
XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
if(file !=null){
  return await file.readAsBytes();
}
} 