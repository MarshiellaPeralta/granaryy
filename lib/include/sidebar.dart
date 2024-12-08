import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../dashboard.dart';
import '../global.dart';
import '../login.dart';

class Sidebar extends StatelessWidget {
  final bool isVisible;
  final Function toggleSidebar;

  Sidebar({required this.isVisible, required this.toggleSidebar});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isVisible ? 60 : 0,
      duration: Duration(milliseconds: 300),
      color: Color(0xFF1F2A44),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildSidebarButton(
            icon: Icons.home,
            label: "Home",
            iconColor: Colors.blue,
            context: context,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SmartHomeApp()),
              );
            },
          ),
          SizedBox(height: 30),
          _buildSidebarButton(
            icon: Icons.logout,
            label: "Logout",
            iconColor: Colors.red,
            context: context,
            onTap: () {
              _showLogoutConfirmationDialog(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarButton({
    required IconData icon,
    required String label,
    required Color iconColor,
    required BuildContext context,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          AnimatedOpacity(
            opacity: isVisible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 300),
            child: Column(
              children: [
                Icon(
                  icon,
                  color: iconColor,
                  size: 30,
                ),
                SizedBox(height: 5),
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Text(
            "Logout",
            style: TextStyle(color: Colors.redAccent),
          ),
          content: Text("Are you sure you want to logout?"),
          actions: <Widget>[
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Logout", style: TextStyle(color: Colors.red)),
              onPressed: () {
                _logoutUser(context);
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _logoutUser(BuildContext context) async {
    try {
      final response = await http.post(
        Uri.parse('https://grannary.cnlabworks.io/logout.php'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        Navigator.of(context).pop();
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => GrannaryLoginScreen()),
              (Route<dynamic> route) => false,
        );
      } else {
        _showErrorDialog(context, "Logout failed. Please try again.");
      }
    } catch (e) {
      _showErrorDialog(
          context, "An error occurred. Please check your connection and try again.");
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Text("Error", style: TextStyle(color: Colors.redAccent)),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
