import 'dart:convert';

import 'package:buscador_gifs/ui/gif_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:share_plus/share_plus.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _search = "";
  int _offset = 0;

  Future<Map> _getGifs() async {
    http.Response response;

    if (_search.isEmpty) {
      response = await http.get(Uri.parse(
          "https://api.giphy.com/v1/gifs/trending?api_key=lkqYnUWdp1en5TwjiSSNFmymqIAfVTP5&limit=20&rating=g"));
    } else {
      response = await http.get(Uri.parse(
          "https://api.giphy.com/v1/gifs/search?api_key=lkqYnUWdp1en5TwjiSSNFmymqIAfVTP5&q=$_search&limit=19&offset=$_offset&rating=g&lang=pt"));
    }
    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();

    _getGifs().then((map) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/images/header_logo_buscador_giphy.gif',
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: "Pesquise aqui",
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
              onSubmitted: (text) {
                setState(() {
                  _search = text;
                });
              },
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: _getGifs(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                  case ConnectionState.none:
                    return Container(
                      width: 200.0,
                      height: 200.0,
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 5.0,
                      ),
                    );
                  default:
                    if (snapshot.hasError) {
                      return Container();
                    } else {
                      return _createGifTable(context, snapshot);
                    }
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  int _getCount(List data) {
    if (_search.isEmpty) {
      return data.length;
    } else {
      return data.length + 1;
    }
  }

  Widget _createGifTable(BuildContext context, AsyncSnapshot snapshot) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: _getCount(
        snapshot.data["data"],
      ),
      itemBuilder: (context, index) {
        if (index < snapshot.data["data"].length) {
          return GestureDetector(
            child: FadeInImage.memoryNetwork(
              image: snapshot.data["data"][index]["images"]["fixed_height"]
                  ["url"],
              height: 300.0,
              fit: BoxFit.cover,
              placeholder: kTransparentImage,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GifPage(snapshot.data["data"][index]),
                ),
              );
            },
            onLongPress: () {
              Share.share(
                snapshot.data["data"][index]["images"]["fixed_height"]["url"],
              );
            },
          );
        } else {
          return GestureDetector(
            onTap: (() {
              setState(() {
                _offset += 19;
              });
            }),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 70.0,
                ),
                Text(
                  "Carregar mais...",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
