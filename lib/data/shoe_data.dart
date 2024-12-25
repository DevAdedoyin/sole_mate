class Shoes {
  final image;
  final itemName;
  final price;
  final category;
  final ratings;
  final sizeList;
  final description;

  Shoes({
    required this.image,
    required this.price,
    required this.itemName,
    required this.sizeList,
    required this.description,
    required this.category,
    required this.ratings,
  });
}

class FlashSaleList {
  static final flashSales = [
    Shoes(
        image:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/455f9a41-0c68-4dbe-a5ad-a44c576cc195/NIKE+AIR+FORCE+1+JEWEL.png",
        sizeList: ["UK 11", "UK 12", "UK 14"],
        price: "£119.99",
        itemName: "Nike Air Force 1",
        category: "Men's Shoes",
        ratings: "4.9",
        description:
            "Comfortable, durable and timeless—it's number 1 for a reason. The classic '80s construction is paired with bold details for style that tracks whether you're on the court or on the go."),
    Shoes(
        image:
            "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/hnedaajpjafdvtjhchip/NIKE+SHOX+R4.png",
        sizeList: ["UK 7", "UK 7.5", "UK 14"],
        price: "£134.99",
        itemName: "Nike Shox R4",
        category: "Women's Shoes",
        ratings: "4.7",
        description:
            "A recrafted version of the 2001 icon, the Nike Shox R4 replicates the original with its synthetic and textile upper, design lines and laser perforations. Nike Shox cushioning distributes weight to maximise comfort and provide a performance-inspired look."),
    Shoes(
        image:
            "https://media.gucci.com/style/DarkGray_Center_0_0_2400x2400/1721839534/787476_AADHW_9552_002_100_0000_Light-Mens-Gucci-Re-Web-sneaker.jpg",
        sizeList: ["UK 12", "UK 13", "UK 14"],
        price: "£839.99",
        itemName: "Men's Gucci Re-Web sneaker",
        category: "Men's Shoes",
        ratings: "4.6",
        description:
            "The first sneakers envisioned by Sabato De Sarno for the House, the Re-Web sees Gucci’s heritage stripes as a bold statement detail on a contemporary silhouette. Defined by iconic details, this pair of sneakers is crafted from beige and blue Original GG canvas and completed with green and red Web tongue."),
    Shoes(
        image:
            "https://media.gucci.com/style/DarkGray_Center_0_0_2400x2400/1704994353/785728_AADJ9_9097_002_100_0000_Light-Womens-Gucci-Re-Web-sneaker.jpg",
        sizeList: ["UK 9", "UK 10", "UK 11"],
        price: "£839.99",
        itemName: "Women's Gucci Re-Web sneaker",
        category: "Women's Shoes",
        ratings: "4.8",
        description:
            "The first sneakers envisioned by Sabato De Sarno for the House, the Re-Web sees Gucci’s heritage stripes as a bold statement detail on a contemporary silhouette. This pair is crafted from white leather. Defined by multiple iconic details, this new sneaker takes center stage with the bold green and red Web tongue. "),
    Shoes(
        image:
            "https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-lv-x-timberland-ankle-boots--BRSQ1PNU31_PM2_Front%20view.png?wid=730&hei=730",
        sizeList: [
          "UK 8",
          "UK 10",
          "UK 11"
        ],
        price: "£1,999.00",
        itemName: "LV x Timberland Ankle Boots",
        category: "Men's Shoes",
        ratings: "4.8",
        description:
            "The co-branded LV x Timberland Ankle Boots combine the workwear spirit of Timberland with the luxury savoir-faire of Louis Vuitton. The model, seen at Pharrell Williams' Fall-Winter 2024 Men's Show, is made in Italy from the finest grained nubuck leather and features an insulated lining and a seam-sealed construction for optimum comfort and durability. Key details include a collar in Monogram grained calf leather and a tag bearing the signature of the collaboration."),
    Shoes(
        image:
            "https://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-laureate-platform-desert-boots--AS8Q2BTX41_PM2_Front%20view.png?wid=730&hei=730",
        sizeList: [
          "UK 8",
          "UK 9",
          "UK10"
        ],
        price: "£1,110.00",
        itemName: "Laureate Platform Desert Boots",
        category: "Women's Shoes",
        ratings: "4.8",
        description:
            "The iconic Laureate Platform Desert Boots are revisited in canvas with calf leather trims. The colour palette and combination of materials give this style a subtle military vibe, complementing its long leather laces and treaded rubber outsole. An LV Initials signature features on the side, while the outsole is decorated with a row of LV Initials."),
  ];
}
