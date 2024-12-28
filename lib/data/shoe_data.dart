class Shoes {
  final imageSource;
  final image;
  final itemName;
  final price;
  final category;
  final ratings;
  final sizeList;
  final description;

  Shoes({
    required this.imageSource,
    required this.image,
    required this.price,
    required this.itemName,
    required this.sizeList,
    required this.description,
    required this.category,
    required this.ratings,
  });
}

class ShoesList {
  static final shoesList = [
    Shoes(
        image:
            "https://res.cloudinary.com/dcgjsxhub/image/upload/v1735339835/removal.ai__6691f92d-e8a2-45d9-8c53-5c37eb8d9f69-787476_aadhw_9552_002_100_0000_light-mens-gucci-re-web-sneaker_yhrbk2.png",
        imageSource:
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
            "https://res.cloudinary.com/dcgjsxhub/image/upload/v1735339841/removal.ai__fd6ae5a4-39c9-4c51-ab9d-390415937667-785728_aadj9_9097_002_100_0000_light-womens-gucci-re-web-sneaker_e0uztc.png",
        imageSource:
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
            "https://res.cloudinary.com/dcgjsxhub/image/upload/v1735339835/removal.ai__86ac6c5c-566f-472b-a00a-9005764f30db-812036_fad21_2543_002_100_0000_light-womens-boot-with-crystals_vpt6hw.png",
        imageSource:
            "https://media.gucci.com/style/DarkGray_Center_0_0_2400x2400/1726642829/812036_FAD21_2543_002_100_0000_Light-Womens-boot-with-crystals.jpg",
        sizeList: ["UK 8", "UK 10", "UK 11"],
        price: "£1,040.00",
        itemName: "Women's boot with crystals",
        category: "Women's Shoes",
        ratings: "4.8",
        description:
            "This shoe features multi-dimensional crystals that add a special feature to the classic silhouette. The emblematic monogram canvas adds a touch of timeless elegance, highlighting the brand's heritage. Carefully crafted, this design effortlessly combines luxury and bold style, making it a true statement piece."),
    Shoes(
        image:
            "https://res.cloudinary.com/dcgjsxhub/image/upload/v1735339835/removal.ai__7c18422b-539d-4f2c-8201-5b842032902c_812631_AADHW_9573_002_100_0000_Light-Mens-Gucci-Re-Web-sneaker_sdrbxe.png",
        imageSource:
            "https://media.gucci.com/style/DarkGray_Center_0_0_2400x2400/1721840409/812631_AADHW_9573_002_100_0000_Light-Mens-Gucci-Re-Web-sneaker.jpg",
        sizeList: ["UK 8", "UK 9", "UK10"],
        price: "£1,040.00",
        itemName: "Men's Gucci Re-Web sneaker",
        category: "Men's Shoes",
        ratings: "4.8",
        description:
            "The first sneakers envisioned by Sabato De Sarno for the House, the Re-Web sees Gucci’s heritage stripes as a bold statement detail on a contemporary silhouette. This pair is crafted from the Original GG canvas and white leather. Defined by multiple details, this new sneaker takes center stage with the bold green and red Web tongue."),
    Shoes(
        image:
            "https://res.cloudinary.com/dcgjsxhub/image/upload/v1735339835/removal.ai__3464b12d-f3e9-4aa7-8157-b94a859047ea-793056_fadld_4046_002_100_0000_light-childrens-high-top-canvas-sneaker_ltjsfx.png",
        imageSource:
            "https://media.gucci.com/style/DarkGray_Center_0_0_2400x2400/1717173915/793056_FADLD_4046_002_100_0000_Light-Childrens-high-top-canvas-sneaker.jpg",
        sizeList: ["UK 7", "UK 8", "UK 9"],
        price: "£400.00",
        itemName: "Children's high top canvas sneaker",
        category: "Children's's Shoes",
        ratings: "4.9",
        description:
            "From prints to embroidered details, the House name and logo appears in various forms atop a selection of ready-to-wear and accessories for Pre-Fall 2024. These high-top children's sneakers are presented in beige and blue GG canvas and defined by a GG embossed logo across the contrasting toe cap."),
    Shoes(
        image:
            "https://res.cloudinary.com/dcgjsxhub/image/upload/v1735339835/removal.ai__fb591f0a-4fd2-413f-ad25-193fe914abec-755894_upg20_2866_002_100_0000_light-childrens-leather-platform-trainer_zj1cyu.png",
        imageSource:
            "https://media.gucci.com/style/DarkGray_Center_0_0_2400x2400/1695394842/755894_UPG20_2866_002_100_0000_Light-Childrens-leather-platform-trainer.jpg",
        sizeList: ["UK 7", "UK 7.5", "UK 8"],
        price: "£360.00",
        itemName: "Children's leather platform trainer",
        category: "Children's's Shoes",
        ratings: "4.8",
        description:
            "This brown leather trainer presents the emblematic Original GG canvas, while a white leather detail of the Interlocking G logo decorates the back of the shoe, completing the design with a logo feel."),
  ];
}
