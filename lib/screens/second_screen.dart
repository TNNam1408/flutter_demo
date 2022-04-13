import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int page = 0;
  PageController controller = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      if (controller.page!.round() != controller.page!) {
        setState(() {
          page = controller.page!.round();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //background: linear-gradient(8.95deg, #FFCB04 1.23%, #FFD227 16.3%, #FFF9E3 97.68%);
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFFFFF9E3).withOpacity(0.3),
                const Color(0xFFFFD227).withOpacity(0.3),
                const Color(0xFFFFCB04).withOpacity(0.3),
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: controller,
                  children: const [
                    OnBoardOne(),
                    OnBoardTow(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  2,
                  (index) => Padding(
                    padding: const EdgeInsets.all(4),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      child: Container(
                          height: 8,
                          width: index != page ? 8 : 20,
                          decoration: BoxDecoration(
                              color: index != page
                                  ? const Color(0XFF231F20).withOpacity(0.2)
                                  : const Color(0XFFFFCB08),
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  buildButton(),
                  //continue..
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton() {
    return Container(
      width: 102,
      height: 40,
      alignment: Alignment.center,
      child: const Text(
        'Bỏ qua',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      decoration: BoxDecoration(
          color: const Color(0XFFDADADA),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}

class OnBoardOne extends StatelessWidget {
  const OnBoardOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 46, right: 47, top: 97),
          child: Image.asset("assets/images/logo2.png"),
        ),
        // Container(
        //   padding: const EdgeInsets.only(left: 34, top: 15),
        //   child: const Text(
        //     "Xin Chào!",
        //     style: TextStyle(
        //         fontSize: 20,
        //         color: Color(0xFF231F20),
        //         fontFamily: 'Gotham-Medium'),
        //   ),
        // ),
        // Container(
        //   padding: const EdgeInsets.fromLTRB(34, 19, 35, 0),
        //   child: Image.asset("assets/images/img.png"),
        // ),
        // Container(
        //   padding: const EdgeInsets.fromLTRB(34, 23, 35, 0),
        //   child: const Text(
        //     "   eSpot là đơn vị đi đầu trong lĩnh vực cung cấp tiện ích chia sẻ năng lượng, thông qua các trạm sạc pin dự phòng tự động tại Việt Nam.",
        //     style: TextStyle(fontSize: 14, color: Color(0xFF231F20)),
        //   ),
        // ),
        Container(
          padding: const EdgeInsets.fromLTRB(36, 10, 33, 0),
          child: const Text(
            "   Quý khách hàng có thể thuê và trả pin sạc dự phòng một cách nhanh chóng, dễ dàng tại bất cứ đâu thuộc hệ thống của eSpot.",
            style: TextStyle(fontSize: 14, color: Color(0xFF231F20)),
          ),
        ),
      ],
    );
  }
}

class OnBoardTow extends StatelessWidget {
  const OnBoardTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 46, right: 47, top: 97),
          child: Image.asset("assets/images/logo2.png"),
        ),
        Container(
          padding: const EdgeInsets.only(left: 34, top: 15),
          child: const Text(
            "Xin Chào!",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF231F20),
                fontFamily: 'Gotham-Medium'),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(34, 19, 35, 0),
          child: Image.asset("assets/images/img.png"),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(34, 23, 35, 0),
          child: const Text(
            "   eSpot là đơn vị đi đầu trong lĩnh vực cung cấp tiện ích chia sẻ năng lượng, thông qua các trạm sạc pin dự phòng tự động tại Việt Nam.",
            style: TextStyle(fontSize: 14, color: Color(0xFF231F20)),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(36, 10, 33, 0),
          child: const Text(
            "   Quý khách hàng có thể thuê và trả pin sạc dự phòng một cách nhanh chóng, dễ dàng tại bất cứ đâu thuộc hệ thống của eSpot.",
            style: TextStyle(fontSize: 14, color: Color(0xFF231F20)),
          ),
        ),
      ],
    );
  }
}
