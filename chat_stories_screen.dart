import 'package:flutter/material.dart';
import 'chat_stories_screen.dart';
import 'settings_screen.dart';

void main() {
  runApp(const ViberChatApp());
}

class ViberChatApp extends StatefulWidget {
  const ViberChatApp({super.key});

  @override
  State<ViberChatApp> createState() => _ViberChatAppState();
}

class _ViberChatAppState extends State<ViberChatApp> {
  Color _appColor = Colors.teal;

  void _changeColor(Color newColor) {
    setState(() {
      _appColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ViberChat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        colorScheme: ColorScheme.dark(
          primary: _appColor,
          secondary: _appColor,
        ),
      ),
      home: MainScreen(onColorChanged: _changeColor),
    );
  }
}

class MainScreen extends StatefulWidget {
  final Function(Color) onColorChanged;

  const MainScreen({super.key, required this.onColorChanged});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const ChatScreen(),
      const StoriesScreen(),
      const CameraScreen(),
      const VibeslightScreen(),
      SettingsScreen(onColorChanged: widget.onColorChanged),
    ];

    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1E293B),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white60,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories),
            label: 'Stories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Vibes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Réglages',
          ),
        ],
      ),
    );
  }
}
Rédiger
