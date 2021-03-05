import 'package:flutter/material.dart';

class homeTopTabs extends StatefulWidget {

  dynamic colorVal;
  homeTopTabs(this.colorVal);

  _homeTopTabsState createState() => _homeTopTabsState();
}

class _homeTopTabsState extends State<homeTopTabs> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }
  void _handleTabSelection(){
    setState(() {
      widget.colorVal=Colors.pink;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor: Colors.lightBlueAccent,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.explore,
                    color: _tabController.index == 0 ?
                    Color(widget.colorVal):
                    Colors.grey),
                child: Text('For You',
                style: TextStyle(
                    color: _tabController.index == 0 ?
                        Color(widget.colorVal):
                        Colors.grey
                ),
                ),
              ),
              Tab(
                icon: Icon(Icons.insert_chart,
                    color: _tabController.index == 0 ?
                    Color(widget.colorVal):
                    Colors.grey),
                child: Text('Top Charts',
                  style: TextStyle(
                      color: _tabController.index == 0 ?
                      Color(widget.colorVal):
                      Colors.grey
                  ),
                ),
              ),
              Tab(
                icon: Icon(Icons.scatter_plot,
                    color: _tabController.index == 0 ?
                    Color(widget.colorVal):
                    Colors.grey),
                child: Text('Catagores',
                  style: TextStyle(
                      color: _tabController.index == 0 ?
                      Color(widget.colorVal):
                      Colors.grey
                  ),
                ),
              ),
              Tab(
                icon: Icon(Icons.tag_faces,
                    color: _tabController.index == 0 ?
                    Color(widget.colorVal):
                    Colors.grey),
                child: Text('Family',
                  style: TextStyle(
                      color: _tabController.index == 0 ?
                      Color(widget.colorVal):
                      Colors.grey
                  ),
                ),
              ),
              Tab(
                icon: Icon(Icons.star,
                    color: _tabController.index == 0 ?
                    Color(widget.colorVal):
                    Colors.grey),
                child: Text('Editors Choice',
                  style: TextStyle(
                      color: _tabController.index == 0 ?
                      Color(widget.colorVal):
                      Colors.grey
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
