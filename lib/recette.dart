class Recette {
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Recette(this.label, this.imageUrl, this.servings, this.ingredients);
  static List<Recette> samples = [
    Recette(
      'Ndolè Batton de manioc',
      'assets/2126711929_ef763de2b3_w.jpg',
      4,
      [
        Ingredient(
          1,
          'feuille de ndole',
          'viande de boeuf',
        ),
        Ingredient(
          4,
          'cube magie',
          'huile de palme',
        ),
        Ingredient(
          0.5,
          'aille',
          'poivron',
        ),
      ],
    ),
    Recette(
      'Pomme Pille',
      'assets/27729023535_a57606c1be.jpg',
      2,
      [
        Ingredient(
          1,
          'Pomme de terre',
          'Haricot',
        ),
      ],
    ),
    Recette(
      'Kondre plantain viande',
      'assets/3187380632_5056654a19_b.jpg',
      1,
      [
        Ingredient(
          2,
          'Plantain',
          'Viande',
        ),
        Ingredient(
          2,
          'Huile Rouge',
          'Poivron',
        ),
      ],
    ),
    Recette(
      'Taro sauce jaune',
      'assets/15992102771_b92f4cc00a_b.jpg',
      24,
      [
        Ingredient(
          4,
          'Tubercule de taro',
          'Huile rouge',
        ),
        Ingredient(
          2,
          'Viande de bouef',
          'Poivre',
        ),
        Ingredient(
          0.5,
          'cube magie',
          'sel',
        ),
      ],
    ),
    Recette(
      'Koki',
      'assets/8533381643_a31a99e8a6_c.jpg',
      1,
      [
        Ingredient(
          4,
          'Haricot de koki',
          'huile rouge',
        ),
        Ingredient(
          3,
          'Plantin mure',
          'Plantin non mure',
        ),
        Ingredient(
          0.5,
          'macabo',
          'sel',
        ),
        Ingredient(
          0.25,
          'piment',
          'hule rouge',
        ),
      ],
    ),
    Recette(
      'Couscous de manioc',
      'assets/15452035777_294cefced5_c.jpg',
      4,
      [
        Ingredient(
          1,
          'manico ecrasé',
          'sauce gombo',
        ),
        Ingredient(
          1,
          'tomate',
          'huile arrachide',
        ),
        Ingredient(
          8,
          'sel',
          'poivre',
        ),
      ],
    ),
  ];
}

// A faire: Ajouter Ingredient() ici
class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity,
      this.measure,
      this.name,);
}
