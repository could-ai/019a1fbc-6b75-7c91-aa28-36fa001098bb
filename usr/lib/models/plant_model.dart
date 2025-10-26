class Plant {
  final String name;
  final String price;
  final String imageUrl;
  final String description;

  Plant({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}

final List<Plant> plantList = [
  Plant(
    name: 'गुलाब',
    price: '₹150',
    imageUrl: 'https://i.imgur.com/tZ5vA2c.jpeg',
    description: 'गुलाब हे एक सुंदर आणि सुवासिक फूलझाड आहे, जे प्रेम आणि सौंदर्याचे प्रतीक मानले जाते. याची बागकामात आणि सजावटीसाठी मोठ्या प्रमाणावर लागवड केली जाते. गुलाबाच्या अनेक जाती आणि रंग उपलब्ध आहेत.',
  ),
  Plant(
    name: 'जास्वंद',
    price: '₹120',
    imageUrl: 'https://i.imgur.com/M6y5a3x.jpeg',
    description: 'जास्वंद हे एक अत्यंत लोकप्रिय फूलझाड आहे, जे त्याच्या मोठ्या आणि आकर्षक फुलांसाठी ओळखले जाते. हे फूलझाड घरात किंवा बागेत सहज लावता येते आणि ते खूप सुंदर दिसते. याची काळजी घेणे सोपे असते.',
  ),
  Plant(
    name: 'तुळस',
    price: '₹80',
    imageUrl: 'https://i.imgur.com/J4qf4s8.jpeg',
    description: 'तुळस ही एक पवित्र आणि औषधी वनस्पती आहे, जी भारतीय संस्कृतीत अत्यंत महत्त्वाची मानली जाते. प्रत्येक घरात तुळस असायलाच हवी, कारण ती केवळ धार्मिकच नाही, तर आरोग्यासाठीही खूप फायदेशीर आहे.',
  ),
  Plant(
    name: 'कोरफड',
    price: '₹100',
    imageUrl: 'https://i.imgur.com/7sH3sCr.jpeg',
    description: 'कोरफड ही एक औषधी वनस्पती आहे, जी त्वचा आणि केसांसाठी खूप फायदेशीर आहे. यातील गर अनेक सौंदर्यप्रसाधनांमध्ये वापरला जातो. हे एक उत्तम इनडोअर प्लांट आहे.',
  ),
  Plant(
    name: 'मनी प्लांट',
    price: '₹90',
    imageUrl: 'https://i.imgur.com/r2c3jRO.jpeg',
    description: 'मनी प्लांट हे एक लोकप्रिय इनडोअर प्लांट आहे. असे मानले जाते की हे झाड घरात सकारात्मक ऊर्जा आणि समृद्धी आणते. याची वेल घरात किंवा ऑफिसमध्ये सहज वाढवता येते.',
  ),
  Plant(
    name: 'आंबा',
    price: '₹500',
    imageUrl: 'https://i.imgur.com/sC3bY4W.jpeg',
    description: 'फळांचा राजा आंबा, जो तुम्ही तुमच्या बागेत लावू शकता. आंब्याचे झाड केवळ स्वादिष्ट फळेच देत नाही, तर दाट सावली आणि शुद्ध हवा देखील देते. योग्य काळजी घेतल्यास काही वर्षांतच याला फळे येऊ लागतात.',
  ),
];
