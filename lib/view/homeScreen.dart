import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:staggered_ui/provider/stagg_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StaggPeovider? providerF;
  StaggPeovider? providerT;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<StaggPeovider>(context, listen: true);
    providerF = Provider.of<StaggPeovider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text("Staggered RecyclerView",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
            backgroundColor: Colors.white,
            body: MasonryGridView.count(
              crossAxisCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(3),
                  child: Column(
                    children: [
                      Image.asset("${providerF!.photoList[index]}"),
                      SizedBox(height: 3),
                      Text(
                        "${providerF!.nameList[index]}",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  ),
                );
              },
              itemCount: providerF!.photoList.length,
            )));
  }
}
