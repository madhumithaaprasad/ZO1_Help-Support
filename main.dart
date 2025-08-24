import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: "Georgia"),
          bodyMedium: TextStyle(fontFamily: "Georgia"),
          bodySmall: TextStyle(fontFamily: "Georgia"),
        ),
      ),
      home: const AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top bar with back button and title
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      "Help & Support",
                      style: TextStyle(
                        fontFamily: "Georgia",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 48), // keeps title centered
              ],
            ),

            const SizedBox(height: 20),

            // Logo
            Center(
              child: Image.asset(
                "assets/images/z01logo.png", // ✅ use your asset
                height: 120,
              ),
            ),

            const SizedBox(height: 20),

            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: const Text(
                  """At Zo1, we believe that access should never limit creativity. Our platform connects creators with the perfect space, removing barriers and making professional production more accessible than ever. Every feature is crafted to serve a growing community of storytellers, innovators, and entrepreneurs.

Backed by Zuntra’s media-tech expertise, Zo1 also adheres to a strong ethical foundation through the DEAAI framework—promoting Diversity, Equity, Accessibility, Accountability, and Inclusion in all that we do. Whether you're shooting a short film, recording a podcast, or staging a brand shoot—Zo1 is your go-to space companion.

At Zo1, we believe in reimagining how media is produced, consumed, and experienced. Our projects span across AI-powered video and audio production, smart learning platforms, and social networking innovations—empowering creators, businesses, and communities alike.

Our flagship platforms include:
- Huzzler – a creative freelancing and gig platform
- Luvvy – a next-gen social media space
- Zucka – a regional OTT platform focused on Tamil content
- Entwy – offering AI growth and analytics tools
- Wiviy – a full-suite web and app development solution
- Pathlearn – a smart learning ecosystem for upskilling

Beyond technology, we’re deeply rooted in ethics, inclusivity, and sustainability. Our DEAAI framework guides every step we take. Through our startup incubator and innovation labs, we also help foster the next generation of media-tech entrepreneurs.

POWERED BY VISION

Led by Harini Thyagarajan, our CEO and media-tech visionary, Zo1 benefits from a leadership style that blends innovation with inclusivity. Harini ensures Zo1 remains aligned with creator needs, future-ready tech, and socially responsible growth—making it not just a tool, but a movement for creative freedom.""",
                  style: TextStyle(
                    fontFamily: "Georgia", // ✅ applied everywhere
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

