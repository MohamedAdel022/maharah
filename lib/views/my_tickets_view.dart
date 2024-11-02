import 'package:flutter/material.dart';
import 'package:maharah/constants.dart';

class MyTicketsView extends StatelessWidget {
  const MyTicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: primaryColor,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),
        title: const Text('My Tickets',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              color: primaryColor,
              child: const TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(text: 'Active'),
                  Tab(text: 'Finished'),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Active Tickets View')),
                  Center(child: Text('Finished Tickets View')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
