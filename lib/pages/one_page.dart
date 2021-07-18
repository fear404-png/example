import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  int _selectedTab = 0;
  PageController pageController = PageController();

  static final List<Widget> _mainScreenPages = [
    Widget1(),
    Widget2(),
    Widget3(),
    Widget4(),
    Widget5(),
  ];

  @override
  void initState() {
    super.initState();
    pageController = new PageController(initialPage: _selectedTab);
  }

  void onSelectedTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._selectedTab = page;
    });
  }

  void onTap(int index) {
    if (index == _selectedTab) return;
    setState(() {
      _selectedTab = index;
      print(index);
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 100), curve: Curves.easeOutSine);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: PageView(
        children: _mainScreenPages,
        scrollDirection: Axis.horizontal,
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.device_hub_sharp),
            label: "label",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "label",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            label: "label",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi_protected_setup_sharp),
            label: "label",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: "label",
            backgroundColor: Colors.black,
          ),
        ],
        onTap: onTap,
        currentIndex: _selectedTab,
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  const Widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class Widget4 extends StatelessWidget {
  const Widget4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class Widget5 extends StatelessWidget {
  const Widget5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/two_page");
            },
            child: Text("Sing In")));
  }
}
