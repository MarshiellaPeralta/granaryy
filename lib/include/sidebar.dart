import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../dashboard.dart';
import '../global.dart';
import '../login.dart'; // Make sure you import the login screen

class Sidebar extends StatelessWidget {
  final bool isVisible;
  final Function toggleSidebar;

  Sidebar({required this.isVisible, required this.toggleSidebar});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isVisible ? 60 : 0, // Set the width of the sidebar
      duration: Duration(milliseconds: 300),
      color: Color(0xFF1F2A44), // Darker shade for the sidebar
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildSidebarButton(Icons.home, "Home", Colors.blue, context, () {
            // Navigate to the dashboard page when Home button is clicked
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SmartHomeApp()),
            );
          }),
          SizedBox(height: 30),
          _buildSidebarButton(Icons.logout, "Logout", Colors.green, context, () {
            // Show confirmation dialog when Logout button is clicked
            _showLogoutConfirmationDialog(context);
          }),
        ],
      ),
    );
  }

  Widget _buildSidebarButton(IconData icon, String label, Color iconColor, BuildContext context, [VoidCallback? onTap]) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // Show icon only if sidebar is visible
          if (isVisible)
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          if (isVisible)
            SizedBox(height: 5),
          if (isVisible)
            Text(
              label,
              style: TextStyle(color: Colors.white),
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
          title: Text("Logout"),
          content: Text("Are you sure you want to logout?"),
          actions: <Widget>[
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text("Logout"),
              onPressed: () {
                // Call the logout function
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
        Uri.parse('${UserState.API_HOST}/User/logout.php'), // API URL
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        // Handle success - Navigate to login screen and clear the navigation stack
        Navigator.of(context).pop(); // Close the dialog
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => GrannaryLoginScreen()),
              (Route<dynamic> route) => false, // This removes all previous routes
        );
      } else {
        // Handle error - show an alert
        _showErrorDialog(context, "Logout failed. Please try again.");
      }
    } catch (e) {
      // Handle exception - show an alert
      _showErrorDialog(context, "An error occurred. Please check your connection and try again.");
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the error dialog
              },
            ),
          ],
        );
      },
    );
  }
}
