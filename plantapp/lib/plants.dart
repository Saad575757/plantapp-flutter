class Plant {
  final String title;
  final String discription;
  final String price;
  final String height;
  final String image;
  final String temprature;
  final String port;

  Plant({
    required this.title,
    required this.discription,
    required this.price,
    required this.height,
    required this.image,
    required this.temprature,
    required this.port,
  });
}

List<Plant> plants = [
  Plant(
      title: "Turf Pot Plant",
      discription: "Small leaf plant for your home and office decoration",
      height: "40.0 cm to 50cm",
      temprature: "18c to 25c",
      image: "https://images.unsplash.com/photo-1501004318641-b39e6451bec6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=773&q=80",

      port: "Self Growing pot",
      price: "59.00"),
  Plant(
      title: "Scandinavain",
      discription: "Small leaf plant for your home and office decoration",
      height: "40.0 cm to 50cm",
      temprature: "18c to 25c",
      image:
          "https://images.unsplash.com/photo-1501004318641-b39e6451bec6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=773&q=80",
          
      port: "Self Growing pot",
      price: "59.00"),
];