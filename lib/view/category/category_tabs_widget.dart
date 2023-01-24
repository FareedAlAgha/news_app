import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/model/Source.dart';
import 'package:news_app/view/category/source_tap_item.dart';
import 'package:news_app/view/news/news_list.dart';

class CategotyTabsWidget extends StatefulWidget {
  List<Source> sources;

  CategotyTabsWidget(this.sources);

  @override
  State<CategotyTabsWidget> createState() => _CategotyTabsWidgetState();
}

class _CategotyTabsWidgetState extends State<CategotyTabsWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: DefaultTabController(
        length: widget.sources.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              indicatorColor: Colors.transparent,
              tabs: widget.sources
                  .map((source) => SourceTab(
                      source, widget.sources.indexOf(source) == selectedIndex))
                  .toList(),
              isScrollable: true,
            ),
            Expanded(child: NewsList(widget.sources[selectedIndex]))
          ],
        ),
      ),
    );
  }
}
