import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoezy_app/app/models/custompaint.dart';
import 'package:shoezy_app/app/utils/colors.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kBackground,
        body: CustomPaint(
          painter: CurvedLinePainter(),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                      radius: 50,
                    ),
                    SizedBox(height: 10),
                    Text("Hey, 👋",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    Text("Alex Johnson",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
              ),
              ListTile(
                leading:
                    Icon(CupertinoIcons.profile_circled, color: Colors.white),
                title: Text('Profile', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.policy, color: Colors.white),
                title: Text('Terms And Conditions',
                    style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.support_outlined, color: Colors.white),
                title:
                    Text('Support Us', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(CupertinoIcons.phone, color: Colors.white),
                title:
                    Text('Contact Us', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(CupertinoIcons.info, color: Colors.white),
                title: Text('About', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                  thickness: 1.5,
                  endIndent: 150,
                  indent: 20,
                  color: Colors.grey[800]),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text('Logout', style: TextStyle(color: Colors.white)),
                onTap: () => _showLogoutConfirmation(context),
              ),
            ],
          ),
        ));
  }
}

void _showLogoutConfirmation(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        titlePadding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Image.asset(
                'assets/images/logout.png',
                height: 50,
              ),
              SizedBox(height: 20),
              Text(
                'Are you sure you want to log out?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    // Navigator.of(context).pop();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Logout',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black)),
                    child: Text(
                      'Cancel',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ],
        actionsPadding:
            EdgeInsets.only(bottom: 10, right: 10, left: 10, top: 10),
        buttonPadding: EdgeInsets.all(0),
      );
    },
  );
}
