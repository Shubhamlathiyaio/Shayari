import 'package:flutter/cupertino.dart';

class third extends StatefulWidget {
  List shayari;
  int index;
  third(this.index,this.shayari);
  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Row(
          children: [
            Text("data")
          ],
        ))
      ],
    );
  }
}
