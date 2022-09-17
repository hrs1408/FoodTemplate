import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Today\'s Special',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Find out what\'s cooking today!',
                          style: TextStyle(fontSize: 13),
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 47, 235, 156),
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.add_shopping_cart),
                              SizedBox(
                                width: 10,
                              ),
                              Text('CART'),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.greenAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              buildProduct(context),
              const SizedBox(
                height: 20,
              ),
              buildPlaces(context),
              const SizedBox(
                height: 10,
              ),
              buildListProduct(context),
            ],
          ),
        ),
      ),
    );
  }
}

buildProduct(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Row(
    children: [
      Container(
        width: size.width * 0.55,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 128, 206, 252),
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Image.asset('/image/food/Picture1.png', width: 150, height: 150),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Yoshimasa Sushi',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 15,
                      ),
                    ],
                  ),
                  const Text('250 Ratings',
                      style: TextStyle(fontSize: 13, color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: TextStyle(fontSize: 13, color: Colors.white)),
            )
          ]),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        children: [
          Container(
            width: size.width * 0.35,
            height: 145,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.greenAccent,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 145, 236, 192),
                    offset: Offset(0, 7),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(children: [
                Image.asset('/image/food/Picture5.png', width: 100, height: 70),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Yoshimasa Sushi',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 13,
                    ),
                  ],
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: size.width * 0.35,
            height: 145,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 150, 150, 150),
                    offset: Offset(0, 7),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(children: [
                Image.asset('/image/food/Picture5.png', width: 100, height: 70),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Parato Sushi',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 13,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 13,
                    ),
                  ],
                ),
              ]),
            ),
          )
        ],
      )
    ],
  );
}

buildPlaces(BuildContext context) {
  return Column(
    children: [
      Row(
        children: const [
          Text(
            'Places',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
          )
        ],
      ),
    ],
  );
}

buildListProduct(BuildContext context) {
  return Column(children: [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Image.asset('/image/food/Picture6.png', width: 70, height: 70),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Yoshimasa Sushi',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Container(
                width: 170,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: 13, color: Colors.grey)),
                ),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            child: const Text('Order Now'),
          )
        ]),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Image.asset('/image/food/Picture7.png', width: 70, height: 70),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Yoshimasa Sushi',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Container(
                width: 170,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: 13, color: Colors.grey)),
                ),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            child: const Text('Order Now'),
          )
        ]),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Image.asset('/image/food/Picture8.png', width: 70, height: 70),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Yoshimasa Sushi',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Container(
                width: 170,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: 13, color: Colors.grey)),
                ),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            child: const Text('Order Now'),
          )
        ]),
      ),
    )
  ]);
}
