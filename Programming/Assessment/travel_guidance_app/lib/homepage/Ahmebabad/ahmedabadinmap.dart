import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ahmedabadinmap extends StatefulWidget {
  const Ahmedabadinmap({super.key});

  @override
  State<Ahmedabadinmap> createState() => _AhmedabadinmapState();
}

class _AhmedabadinmapState extends State<Ahmedabadinmap> {
  // Function to open URLs
  void _launchMapUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Could not launch map")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ahmedabad in Map',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),

            Text("📍 Major Tourist Spots", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("• Sabarmati Ashram\n• Kankaria Lake\n• Adalaj Stepwell\n• Science City\n• Jama Masjid"),
            SizedBox(height: 16),

            Text("🧭 City Zones", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("• Old City: Historical landmarks, Manek Chowk, traditional housing\n"
                "• New City: SG Highway, IT hubs, malls\n"
                "• East Ahmedabad: Railway station, older markets\n"
                "• West Ahmedabad: Educational institutes, hospitals"),
            SizedBox(height: 16),

            Text("🚉 Transportation Hubs", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("• Railway Station (Kalupur)\n• Airport (SVPI)\n• Bus Terminals – Geeta Mandir, Paldi"),
            SizedBox(height: 16),

            Text("🛣️ Major Roads", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("• SG Highway\n• C.G. Road\n• Ashram Road\n• Ring Road"),
            SizedBox(height: 16),

            Text("🚇 Metro & BRTS Routes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("• Metro: East-West and North-South lines\n• BRTS: Key bus corridors like RTO to Maninagar"),
            SizedBox(height: 16),

            Text("🏥 Emergency Locations", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("• Civil Hospital\n• Police Commissioner Office\n• Fire Stations\n• Major Clinics"),
            SizedBox(height: 16),

            Text("🗺️ Map Access", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            InkWell(
              onTap: () => _launchMapUrl("https://www.google.com/maps/place/Ahmedabad"),
              child: Row(
                children: [
                  Icon(Icons.map, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    "Open in Google Maps",
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
