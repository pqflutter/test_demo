import 'package:flutter/material.dart';
import 'package:test_demo/pages/report/report_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final List<Widget> _tabs = [
    const Tab(text: "", icon: Icon(Icons.menu)),
    const Tab(text: "", icon: Icon(Icons.swap_horiz_outlined)),
    const Tab(text: "", icon: Icon(Icons.home)),
    const Tab(text: "", icon: Icon(Icons.signal_cellular_alt_outlined)),
    const Tab(text: "", icon: Icon(Icons.settings)),
  ];

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          _buildPage(0),
          _buildPage(1),
          _buildPage(2),
          const ReportPage(),
          _buildPage(4),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.black87,
        child: SizedBox(
          height: MediaQuery.of(context).padding.bottom + 44,
          child: TabBar(
            controller: tabController,
            tabs: _tabs,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black87,
            indicatorColor: Colors.black87,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(),
          ),
        ),
      ),
    );
  }

  Widget _buildPage(int index) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab $index"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("Tab $index"),
        ),
      ),
    );
  }
}
