import 'package:flutter/material.dart';
import 'package:my_app/models/commodities.dart';
import 'package:my_app/src/pages/confirmation_page.dart';

class HouseHoldGoodsPage extends StatelessWidget {
  final Commodity seleted;
  final String item;
  const HouseHoldGoodsPage(
      {required this.seleted, required this.item, Key? key, String? label})
      : super(key: key);

  //static const String routeName = 'houseitems';

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Moving: " + item,
          style: const TextStyle(fontSize: 17),
        ),
        backgroundColor: Colors.black87,
        centerTitle: false,
      ),
      body: addDynamic(item),
    );
  }
}

addDynamic(String item) {
  if (item == 'Furniture') {
    return const FurnituresPage();
  } else if (item == 'Home Electronics') {
    return const HomeElectronicsPage();
  } else if (item == 'Appliances') {
    return const AppliancesPage();
  } else if (item == 'Arcade Equipment') {
    return const ArcadeEquipmentPage();
  } else {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          "Listing no defined",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}

class FurnituresPage extends StatelessWidget {
  const FurnituresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("FurnituresPage to List"),
      ),
    );
  }
}

class HomeElectronicsPage extends StatelessWidget {
  const HomeElectronicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("HomeElectronicsPage to List"),
      ),
    );
  }
}

class AppliancesPage extends StatelessWidget {
  const AppliancesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("HomeElectronicsPage to List"),
      ),
    );
  }
}

class ArcadeEquipmentPage extends StatelessWidget {
  const ArcadeEquipmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("ArcadeEquipment to List"),
      ),
    );
  }
}

class OutdoorEquipmentPage extends StatelessWidget {
  const OutdoorEquipmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("OutdoorEquipmentPage to List"),
      ),
    );
  }
}

class SportingEquipmentPage extends StatelessWidget {
  const SportingEquipmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("SportingEquipmentPage to List"),
      ),
    );
  }
}

class NewFurnitureMove extends StatefulWidget {
  NewFurnitureMove({Key? key}) : super(key: key);

  @override
  State<NewFurnitureMove> createState() => _NewFurnitureMoveState();
}

class _NewFurnitureMoveState extends State<NewFurnitureMove> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "List Shipment",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(
            height: 20,
            color: Colors.white,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Funiture Type'),
              hintText: 'What type of furniture? i.e couch, chair',
              hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
              filled: true,
              isDense: true,
            ),
            //controller: _username,
            keyboardType: TextInputType.streetAddress,
            autocorrect: false,
          ),
          const Divider(
            height: 20,
            color: Colors.white,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'LENGTH',
                    style: TextStyle(fontSize: 10),
                  ),
                  filled: true,
                  isDense: true,
                ),
              )),
              Expanded(
                  child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'WIDTH',
                    style: TextStyle(fontSize: 10),
                  ),
                  filled: true,
                  isDense: true,
                ),
              )),
              Expanded(
                  child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 10),
                  ),
                  filled: true,
                  isDense: true,
                ),
              )),
              Expanded(
                  child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'Drop here',
                    style: TextStyle(fontSize: 10),
                  ),
                  filled: true,
                  isDense: true,
                ),
              )),
            ],
          ),
          const Divider(
            height: 20,
            color: Colors.white,
          ),
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'WEIGHT',
                    style: TextStyle(fontSize: 10),
                  ),
                  filled: true,
                  isDense: true,
                ),
              )),
              Expanded(
                  child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'Drop here',
                    style: TextStyle(fontSize: 10),
                  ),
                  filled: true,
                  isDense: true,
                ),
              )),
            ],
          ),
          const Divider(
            height: 20,
            color: Colors.white,
          ),
          Expanded(
              child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                'Quantity',
                style: TextStyle(fontSize: 10),
              ),
              filled: true,
              isDense: true,
            ),
          )),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PickUpLocationFromTo()));
              },
              child: const Text("Continue")),
        ],
      ),
    );
  }
}

class PickUpLocationFromTo extends StatefulWidget {
  PickUpLocationFromTo({Key? key}) : super(key: key);

  @override
  _PickUpLocationFromToState createState() => _PickUpLocationFromToState();
}

class _PickUpLocationFromToState extends State<PickUpLocationFromTo> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DATA'),
        backgroundColor: Colors.black87,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            key: _key,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pickup Location",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Divider(height: 20, color: Colors.white),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Pick up location',
                      filled: true,
                      isDense: true,
                    ),
                    //controller: _username,
                    keyboardType: TextInputType.streetAddress,
                    autocorrect: false,
                  ),
                  const Divider(height: 20, color: Colors.white),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Delivery location',
                      filled: true,
                      isDense: true,
                    ),
                    //controller: _username,
                    keyboardType: TextInputType.streetAddress,
                    autocorrect: false,
                  ),
                  const Divider(height: 40, color: Colors.white),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("When do you need your shitment deliver?",
                        style: TextStyle(fontSize: 17)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      //labelText: 'Delivery location',
                      filled: true,
                      isDense: true,
                      hintText: 'M/D/YYYY',
                    ),
                    //controller: _username,
                    keyboardType: TextInputType.datetime,
                    autocorrect: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConfirmationPage()));
                        },
                        child: const Text("Continue")),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
