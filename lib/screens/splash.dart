import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  int _pageIndex = 0;

  final List<Map<String, String>> splashData = [
    {
      "title": "Welcome to KB1179",
      "subtitle": "Aplikasi UTS Flutter- Pemrograman Mobile",
      "images": "assets/images/splash1.png",
    },
    {
      "title": "Learn & Build",
      "subtitle": "Membuat UI bagus dan responsif menggunakan Flutter",
      "images": "assets/images/splash2.png",
    },
    {
      "title": "Get Started",
      "subtitle": "Mulai perjalanan",
      "images": "assets/images/splash3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (index) => setState(() => _pageIndex = index),
                itemCount: splashData.length,
                itemBuilder: (context, index) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      splashData[index]['image']!,
                      height: size.height * 0.4,
                    ),
                    const SizedBox(height: 40),
                    Text(
                      splashData[index]['title']!,
                      style :Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: color,
                        fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      splashData[index]['subtitle']!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.only(right: 6),
                        height: 8,
                        width: _pageIndex == index ? 24 :8,
                        decoration: BoxDecoration(
                          color: _pageIndex == index
                          ? color
                          : color.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_pageIndex == splashData.length - 1) {
                            Navigator.pushReplacementNamed(context, '/signin');
                          } else {
                            _controller.nextPage(duration:const Duration(milliseconds: 400),
                             curve: Curves.ease,
                             );
                          }
                        },
                        child: Text(
                          _pageIndex == splashData.length - 1
                          ? "Continue"
                          : "Next",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "NIM: 1123150116",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}