import 'package:caffee_ui_demo/helper/image_path.dart';

class CoffeeModel {
  String name, image, description, type;
  int timeToBrew, price;

  CoffeeModel(
      {this.name,
      this.image,
      this.description,
      this.timeToBrew,
      this.price,
      this.type});
}

final ourSpecialCoffies = [
  CoffeeModel(
      name: 'Café Latte',
      image: coffee1,
      description:
          'A fairly popular option for coffee drinkers, a latte consists steamed (or scalded) milk and a single shot of coffee.\nIt is usually quite frothy, and you’ll occasionally encounter cafes that don’t understand the difference between this and a flat white.',
      timeToBrew: 10,
      price: 20,
      type: 'Strong'),
  CoffeeModel(
      name: 'Cappuccino',
      image: coffee2,
      description:
          'Possibly the most popular type of coffee in the world, a cappuccino consists of three layers (kind of like a cake).\nThe first is a shot of espresso, then a shot of steamed milk, and finally the barista adds a layer of frothed, foamy milk.',
      timeToBrew: 15,
      price: 30,
      type: 'Medium'),
  CoffeeModel(
      name: 'Espresso',
      image: coffee3,
      description:
          'To make an espresso, shoot boiling water under high pressure through finely ground up coffee beans and then pour into a tiny mug.\nSounds simple right? Well, it’s surprisingly difficult to master. ',
      timeToBrew: 20,
      price: 40,
      type: 'Light'),
];

final normalCoffee = [
  CoffeeModel(
      name: 'Flat White',
      image: coffee4,
      description:
          'The two most Kiwi coffees available are the long black and the flat white – as both originated in New Zealand and Australia.\nFor a flat white, the steamed milk from the bottom of the jug (which is usually not so frothy, but rather creamy) is poured over a shot of espresso.',
      timeToBrew: 10,
      price: 20,
      type: 'Strong'),
  CoffeeModel(
      name: 'Long Black',
      image: coffee5,
      description:
          'Hot water is poured into a cup, and then two shots of espresso are poured into the water.\nIf you do the inverse of this, it will result in an Americano. Long blacks can be quite strong, and have more crema (a creamy foam that tops espresso shots) than an Americano.',
      timeToBrew: 20,
      price: 40,
      type: 'Medium'),
  CoffeeModel(
      name: 'Macchiato',
      image: coffee6,
      description:
          'A macchiato is a shot of espresso which is then topped off with foamed milk dashed directly into the cup.\nAlthough it may sound similar to a cappuccino, it’s usually stronger as there’s no steamed milk added and it’s also smaller, usually served in an expresso sized cup.',
      timeToBrew: 30,
      price: 60,
      type: 'Light'),
];
