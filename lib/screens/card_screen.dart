import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
              title: "Batman",
              imgUrl:
                  "https://www.tonica.la/__export/1606087293449/sites/debate/img/2020/11/22/batman-ranking-actores.jpg_423682103.jpg"),
          SizedBox(height: 10),
          CustomCardType2(
              title: "Red Batman",
              imgUrl:
                  "https://www.cinemascomics.com/wp-content/uploads/2021/10/The-batman-nuevo-trailer-DC-Fandome.jpg"),
          SizedBox(height: 10),
          CustomCardType2(
              title: "The Batman",
              imgUrl:
                  "https://timlo.net/wp-content/uploads/2020/10/the-batman-promo-art.jpg"),
          SizedBox(height: 10),
          CustomCardType2(
              title: "Robins",
              imgUrl:
                  "https://static.vix.com/es/sites/default/files/btg/comics.batanga.com/files/Cuatro-ninos-que-portaron-el-manto-de-Robin-1.jpg"),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
