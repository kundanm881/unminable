import 'package:flutter/material.dart';
import 'package:unminable/api_request/pool_request.dart';
import 'package:unminable/models/pool_model.dart';

import 'home_progress_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<PoolModel>(
          future: PoolRequert().getpoolsdata(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("connextion = "),
                      Text(snapshot.data!.success.toString())
                    ],
                  )
                ]);
              }
            }
            return HomeProgressIndicator();
          },
        ),
      ),
    );
  }
}
