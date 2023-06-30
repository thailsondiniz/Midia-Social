import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> apiDados = [];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xF5F5F5F5),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xF5F5F5F5),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xF5F5F5F5),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mail_outline_rounded,
                  size: 30,
                ),
                color: Colors.grey,
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                size: 30,
              ),
              color: Colors.grey,
            ),
          ),
        ),
        body: ListView(
          children: [
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 30, top: 20, bottom: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 75.0,
                        height: 75.0,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 204, 204, 204),
                              blurRadius: 4.0,
                              spreadRadius: 1,
                              offset: Offset(
                                1.0,
                                1.0,
                              ),
                            )
                          ],
                          color: const Color.fromARGB(255, 245, 245, 245),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 55,
                          color: Color.fromARGB(255, 255, 4, 121),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      story(
                          'https://images.pexels.com/photos/2748242/pexels-photo-2748242.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                      story(
                          'https://images.pexels.com/photos/2471298/pexels-photo-2471298.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                      story(
                          'https://images.pexels.com/photos/2080753/pexels-photo-2080753.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                      story(
                          'https://images.pexels.com/photos/325865/pexels-photo-325865.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                      story(
                          'https://images.pexels.com/photos/3366753/pexels-photo-3366753.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                      story(
                          'https://images.pexels.com/photos/2905823/pexels-photo-2905823.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                      story(
                          'https://images.pexels.com/photos/572469/pexels-photo-572469.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                    ],
                  ),
                ),
              ),
            ),
            sessao(
                "Amanda Sales",
                "https://images.pexels.com/photos/2748242/pexels-photo-2748242.jpeg?auto=compress&cs=tinysrgb&w=1600",
                "https://images.pexels.com/photos/2748242/pexels-photo-2748242.jpeg?auto=compress&cs=tinysrgb&w=1600"),
            sessao(
                "Alice",
                "https://images.pexels.com/photos/3328058/pexels-photo-3328058.jpeg?auto=compress&cs=tinysrgb&w=1600",
                "https://images.pexels.com/photos/3328058/pexels-photo-3328058.jpeg?auto=compress&cs=tinysrgb&w=1600"),
            sessao(
                "Nicole Oliveira",
                "https://images.pexels.com/photos/1003979/pexels-photo-1003979.jpeg?auto=compress&cs=tinysrgb&w=1600",
                "https://images.pexels.com/photos/1003979/pexels-photo-1003979.jpeg?auto=compress&cs=tinysrgb&w=1600"),
            sessao(
                "Paula",
                "https://images.pexels.com/photos/3435323/pexels-photo-3435323.jpeg?auto=compress&cs=tinysrgb&w=600",
                "https://images.pexels.com/photos/3366753/pexels-photo-3366753.jpeg?auto=compress&cs=tinysrgb&w=600"),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: apiDados.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return sessao(apiDados[index][0], apiDados[index][1],
            //           apiDados[index][2]);
            //     },
            //   ),
            // ),
          ],
        )
        // body:
        );
  }
}

Widget story(imagem) {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 255, 4, 121), width: 3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(imagem, width: 80.0),
        ),
      ),
      const SizedBox(width: 10)
    ],
  );
}

Widget sessao(String nome, String image, String perfil) {
  return Container(
    padding: const EdgeInsets.all(10),
    width: double.infinity,
    height: 500,
    // color: Colors.red,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 360,
              height: 80,
              // color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(perfil, width: 45),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    // color: Colors.yellow,
                    width: 240,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nome,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const Text(
                          'Central Park, NYC',
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 184, 184),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(image, width: 350),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'lib/img/heart.png',
                width: 25,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'lib/img/chat.png',
                width: 25,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'lib/img/send.png',
                width: 26,
              ),
            ),
            const SizedBox(
              width: 170,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'lib/img/bookmark.png',
                width: 25,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
