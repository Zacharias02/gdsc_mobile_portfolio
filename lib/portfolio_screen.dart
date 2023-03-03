import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  bool _isDarkMode = false;

  void showNotification(String message) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            fontSize: 15,
            fontFamily: 'DM Sans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDarkMode ? Colors.black : null,
      body: Stack(
        children: [
          if (!_isDarkMode)
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/background_img.png',
                fit: BoxFit.cover,
                color: Colors.black12,
                colorBlendMode: BlendMode.darken,
              ),
            ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.brown,
                  backgroundImage: NetworkImage(
                    'https://api.multiavatar.com/Binx%20Bond.png',
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.bold,
                    color: _isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'GSDC-CITU Member | Flutter Developer',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'DM Sans',
                    fontStyle: FontStyle.italic,
                    color: _isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(
                    color: _isDarkMode ? Colors.white : Colors.black,
                    indent: 30,
                    endIndent: 30,
                  ),
                ),
                Text(
                  'Connect with me!',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w600,
                    color: _isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => showNotification('Hooray! Github pressed.'),
                      child: Image.asset(
                        _isDarkMode
                            ? 'assets/images/github_light.png'
                            : 'assets/images/github_dark.png',
                        scale: 1.3,
                      ),
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: () =>
                          showNotification('Hooray! LinkedIn pressed.'),
                      child: Image.asset(
                        _isDarkMode
                            ? 'assets/images/linked_in_light.png'
                            : 'assets/images/linked_in_dark.png',
                        scale: 1.2,
                      ),
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: () =>
                          showNotification('Hooray! Facebook pressed.'),
                      child: Image.asset(
                        _isDarkMode
                            ? 'assets/images/fb_light.png'
                            : 'assets/images/fb_dark.png',
                        scale: 1.4,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Text(
                  'Powered by:',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w600,
                    color: _isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 55,
                  child: Image.asset(
                    'assets/images/gdsc_logo.png',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isDarkMode = !_isDarkMode;
          });
        },
        child: Icon(
          _isDarkMode ? Icons.lightbulb : Icons.lightbulb_outline,
          color: _isDarkMode ? Colors.amber : Colors.white,
        ),
      ),
    );
  }
}
