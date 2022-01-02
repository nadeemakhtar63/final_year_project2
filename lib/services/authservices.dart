import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_year_project/Screen/Signing%20Screen/Login.dart';
import 'package:final_year_project/Screen/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'AuthController.dart';
class AuthController extends GetxController{
  static AuthController instance=Get.find();
  late CollectionReference collectionReference;
// late Rx<GoogleSignInAccount?> googleSignInAccount;
 // RxList<List<MyModule>> todolist=RxList<List<MyModule>>([]);
// List<TodoModule> get  todos=>todolist.value;
  late Rx<User?>firebaseUser;
  // String? get uset=>firebaseUser.value?.email;
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(auth.currentUser);
    // googleSignInAccount = Rx<GoogleSignInAccount?>(googleSign.currentUser);
    ever(firebaseUser, _setInitilizeScree);
    firebaseUser.bindStream(auth.userChanges());
    // todolist.bindStream(getcurrentEvenets());
// todolist.bindStream(FirebaseCRUD.todoStream());
//   googleSignInAccount.bindStream(googleSign.onCurrentUserChanged);
//   ever(googleSignInAccount, _setInitilizeScreenGoogle);
  }
  resetPassword(String email,context)async
  {
    await auth.sendPasswordResetEmail(email: email);
    Navigator.pushReplacement(context,new MaterialPageRoute(builder: (context)=>Login()));
  }
  _setInitilizeScree(User? user) {
    try {
      if (user == null) {
        Get.offAll(() => Login());
      }
      else {
        Get.offAll(() => HomeScreen());
      }
    }
    catch(e)
    {
      Get.snackbar("Error Creating Account", e.toString(),snackPosition: SnackPosition.BOTTOM);
    }
  }
// _setInitilizeScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
//   print(googleSignInAccount);
//   if(googleSignInAccount==null){
//     Get.offAll(()=>SignUp());
//   }
//   else{
//     Get.offAll(()=>HomeTab());
//   }
// }
// void signinwithgoogle()async{
//   try{
//     GoogleSignInAccount? googleSignInAccount=await googleSign.signIn();
//     if(googleSignInAccount!=null)
//       {
//         GoogleSignInAuthentication googleSignInAuthentication=await googleSignInAccount.authentication;
//         AuthCredential credential=GoogleAuthProvider.credential(
//           accessToken: googleSignInAuthentication.accessToken,
//           idToken: googleSignInAuthentication.idToken
//         );
//         await auth
//         .signInWithCredential(credential)
//         .catchError((onErr)=>print(onErr));
//       }
//   }
//   catch(e)
//   {
//     Get.snackbar("Error", e.toString(),snackPosition: SnackPosition.BOTTOM);
//     print(e.toString());
//   }
// }

  void register(String email,String password,String name)async{
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    catch(e)
    {
      Get.snackbar("Error Creating Account", e.toString(),snackPosition: SnackPosition.BOTTOM);
    }
  }
  void login(String email,password) async
  {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }
    catch(e)
    {
      Get.snackbar("Error Creating Account", e.toString(),snackPosition: SnackPosition.BOTTOM);
    }
  }
  void siginout()async {
    try {
      await auth.signOut();
    //  Get.find<ProfileController>().clear();
    }
    catch(e)
    {
      Get.snackbar("Not SignOut Error Accur",e.toString(),snackPosition: SnackPosition.BOTTOM);
    }
  }
  @override
  // Future<void> changeEmail(String email) async {
  //   return auth.updateEmail(email);
  // }
  // @override
  // Future<void> changePassword(String password) async {
  //   auth.updatePassword(password).then((_) {
  //     print("Succesfull changed password");
  //   }).catchError((error) {
  //     print("Password can't be changed" + error.toString());
  //   });
  //   return null;
  // }
  @override
  Future<void> sendPasswordResetMail(String  email,context) async {
    bool isloading=true;
    auth.sendPasswordResetEmail(email: email).then((onVal) {
      Navigator.pop(context, true);
      if (isloading) {
        isloading = false;

      }
    }).catchError((onError) {
      if (onError.toString().contains("ERROR_USER_NOT_FOUND")) {
        Get.snackbar("Respose", "User Not Found", );
      } else if (onError
          .toString()
          .contains("An internal error has occurred")) {
        Get.snackbar("response", onError.toString(), );
      }
      if (isloading) {

        isloading = false;

      }
    });
  }

//   Stream<List<MyModule>>> getcurrentEvenets()=>collectionReference.snapshots().map((event) =>
//   event.docs.map((e) => MyModule.fromMap(e)).toList());
// // void storeData(String name,email,phone) async{
// await firebaseFirestore.collection('data').add({name:name,email:email,phone:phone});
// }
//   Future<List<MyModule>> fetchQuestions(String userId) async {
//     final questions = <MyModule>[];
//     final doc = await FirebaseFirestore.instance.collection('Questions').doc(userId).get();
//     final questionsTmp = doc.data()!.values;
//     questionsTmp.forEach((questionTmp) {
//       questions.add(MyModule.fromMap(questionTmp));
//     });
//     return questions;
//   }
}