

import 'package:app_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class TypeComplaints extends StatelessWidget{
  
  TypeComplaints({super.key});
  

   final List<Map<String, String>> cardsData = [
    {
      "title": "Encendio",
      "description": "Descripción de la tarjeta 1",
      "image": "assets/images/backrundLogin.png"
    },
    {
      "title": "Card 2",
      "description": "Descripción de la tarjeta 2",
      "image": "https://via.placeholder.com/150"
    },
    {
      "title": "Card 3",
      "description": "Descripción de la tarjeta 3",
      "image": "https://via.placeholder.com/150"
    },
    {
      "title": "Card 4",
      "description": "Descripción de la tarjeta 4",
      "image": "https://via.placeholder.com/150"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3/4
        ), 
        itemCount: cardsData.length,
        itemBuilder: (context, index){
          var card = cardsData[index];
                     
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(
                      card['image']!, // URL de la imagen
                      width: double.infinity,
                      height: 220,
                      fit: BoxFit.fill,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 220,
                          color: Colors.grey[300],
                          child: const Center(child: Icon(Icons.broken_image, size: 50)),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      card['title']!,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      card['description']!,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child:CustomButton(
                                text: 'Me encuentro en esta situacion',
                                onPressed: (){},
                              ),
                  )
                ],
              ),
            );
        },
        ),
    );
  }
}