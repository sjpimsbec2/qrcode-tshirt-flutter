import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import '../../dbstorage.dart';

class DetailsAboutMe extends StatefulWidget {
  @override
  _DetailsAboutMeState createState() => _DetailsAboutMeState();
}

class _DetailsAboutMeState extends State<DetailsAboutMe> {
  @override
  void initState() {
    super.initState();
  }

  final nameController = new TextEditingController();
  final bioController = new TextEditingController();
  final faveLanguageController = new TextEditingController();
  final professionController = new TextEditingController();
  final tellMeMoreController = new TextEditingController();
  // PersonModel personModel;
  // PersonHelper personHelper = new PersonHelper();
  // List<PersonModel> listPerson = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF3FF),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              Text("Name",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0,
                  )),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                  controller: nameController,
                  decoration:
                      InputDecoration(border: const OutlineInputBorder())),
              SizedBox(
                height: 30.0,
              ),
              Text("Bio",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0,
                  )),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                  controller: bioController,
                  decoration:
                      InputDecoration(border: const OutlineInputBorder())),
              SizedBox(
                height: 30.0,
              ),
              Text("Favorite Programming Language",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0,
                  )),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                  controller: faveLanguageController,
                  decoration:
                      InputDecoration(border: const OutlineInputBorder())),
              SizedBox(
                height: 30.0,
              ),
              Text("Tell more about yourself",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700)),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                  controller: tellMeMoreController,
                  style: TextStyle(fontFamily: 'Poppins'),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration:
                      InputDecoration(border: const OutlineInputBorder())),
              SizedBox(
                height: 30.0,
              ),
              ButtonTheme(
                height: 55,
                child: RaisedButton(
                  color: Colors.yellow,
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        fontFamily: 'Poppins', fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {
                    print("hest");
                  },
                  // onPressed: () async {
                  //   List<PersonModel> person =
                  //       await personHelper.getAllPersonDetails();
                  //   setState(() {
                  //     listPerson = person;
                  //   });
                  //   personModel = PersonModel(
                  //       pBio: bioController.text,
                  //       pFavoritePL: faveLanguageController.text,
                  //       pName: nameController.text,
                  //       pTellMeMore: tellMeMoreController.text);

                  //   if (listPerson.length <= 1) {
                  //     personHelper.insertPersonDetails(personModel);
                  //     print(listPerson[0].toText());
                  //   } else {
                  //     personModel = PersonModel(
                  //         pId: 1,
                  //         pBio: bioController.text,
                  //         pFavoritePL: faveLanguageController.text,
                  //         pName: nameController.text,
                  //         pTellMeMore: tellMeMoreController.text);
                  //     personHelper.updatePersonDetails(personModel);
                  //     print(listPerson[0].toText());
                  //   }
                  // },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}