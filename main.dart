import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 24), // Placeholder for balance in spacing
                  Image.network(
                    'https://placehold.co/64x64?description=SoundCloud%20Logo',
                    width: 64,
                    height: 64,
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    color: Colors.white,
                    onPressed: () {
                      // Close the screen
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(
                      'GET SOUNDCLOUD GO+',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '1 month for free, then \$12.99 / month',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Divider(color: Colors.white70),
                    ListTile(
                      leading: Icon(Icons.check, color: Colors.white),
                      title: Text('Ad-free listening', style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      leading: Icon(Icons.check, color: Colors.white),
                      title: Text('Save unlimited tracks for offline listening', style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      leading: Icon(Icons.check, color: Colors.white),
                      title: Text('Access full catalog', style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      leading: Icon(Icons.check, color: Colors.white),
                      title: Text('Mix tracks within select DJ apps', style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      leading: Icon(Icons.check, color: Colors.white),
                      title: Text('High-quality audio', style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      child: Text('Subscribe now'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[300],
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      ),
                      onPressed: () {
                        // Subscribe logic
                      },
                    ),
                    TextButton(
                      child: Text('See all plans', style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        // Navigate to plans
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Offer limited to one 1 month trial per user. After the first 1 month, '
                        'subscription renews automatically at the advertised price unless cancelled before the end of the month trial. '
                        'Subscription may be managed and monthly auto-renewal may be turned off by going to your App Store Account Settings after purchase. '
                        'Any unused portion of a free trial period will be forfeited when the user purchases a subscription. '
                        'All prices include applicable local sales taxes. Residents of Québec, Canada are not eligible for a trial due to local restrictions.',
                        style: TextStyle(color: Colors.white70, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    TextButton(
                      child: Text('SoundCloud Go Terms of Use & Privacy Policy', style: TextStyle(decoration: TextDecoration.underline, color: Colors.white)),
                      onPressed: () {
                        // Open terms of use
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
