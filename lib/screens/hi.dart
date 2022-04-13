import 'package:flutter/material.dart';

class OnBroadingScreen extends StatefulWidget {
  const OnBroadingScreen({Key? key}) : super(key: key);

  @override
  State<OnBroadingScreen> createState() => _OnBroadingScreenState();
}

class _OnBroadingScreenState extends State<OnBroadingScreen> {
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
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 46),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: controller,
                  children: const [
                    OnBroad1(),
                    OnBroad2(),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 170,
                child: Column(
                  children: [
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
                                          ? const Color(0XFF231F20)
                                          .withOpacity(0.2)
                                          : const Color(0XFFFFCB08),
                                      borderRadius:
                                      BorderRadius.circular(8))),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: buildButton(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  const Color(0XFFFFCB04).withOpacity(0.3),
                  const Color(0XFFFFD227).withOpacity(0.3),
                  const Color(0XFFFFF9E3).withOpacity(0.3)
                ])),
      ),
    );
  }

  Widget buildButton() {
    return Stack(
      children: [
        Container(
          width: 102,
          height: 40,
          alignment: Alignment.center,
          child: const Text(
            'Bỏ qua',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'Svg'),
          ),
          decoration: BoxDecoration(
              color: const Color(0XFFDADADA),
              borderRadius: BorderRadius.circular(10)),
        ),
      ],
    );
  }
}
class OnBroad1 extends StatelessWidget {
  const OnBroad1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Image.asset('assets/images/logo.png'),
          ),
          const Text(
            'Xin chào!',
            style: TextStyle(fontFamily: 'Svg', fontSize: 20),
          ),
          const SizedBox(
            height: 19,
          ),
          Image.asset('assets/images/on_broad_1.png'),
          const SizedBox(
            height: 23,
          ),
          const SizedBox(
            height: 100,
            child: Text(
              '   eSpot là đơn vị đi đầu trong lĩnh vực cung cấp tiện ích chia sẻ năng lượng, thông qua các trạm sạc pin dự phòng tự động tại Việt Nam.',
              style: TextStyle(
                  fontFamily: 'Svg',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.4),
            ),
          ),
          const SizedBox(
            height: 100,
            child: Text(
              '      Quý khách hàng có thể thuê và trả pin sạc dự phòng một cách nhanh chóng, dễ dàng tại bất cứ đâu thuộc hệ thống của eSpot.',
              style: TextStyle(
                  fontFamily: 'Svg',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBroad2 extends StatelessWidget {
  const OnBroad2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Image.asset('assets/images/logo.png'),
          ),
          const Text(
            'Xin chào!',
            style: TextStyle(fontFamily: 'Svg', fontSize: 20),
          ),
          const SizedBox(
            height: 19,
          ),
          Image.asset('assets/images/on_broad_1.png'),
          const SizedBox(
            height: 23,
          ),
          const SizedBox(
            height: 100,
            child: Text(
              '   eSpot là đơn vị đi đầu trong lĩnh vực cung cấp tiện ích chia sẻ năng lượng, thông qua các trạm sạc pin dự phòng tự động tại Việt Nam.',
              style: TextStyle(
                  fontFamily: 'Svg',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.4),
            ),
          ),
          const SizedBox(
            height: 100,
            child: Text(
              '      Quý khách hàng có thể thuê và trả pin sạc dự phòng một cách nhanh chóng, dễ dàng tại bất cứ đâu thuộc hệ thống của eSpot.',
              style: TextStyle(
                  fontFamily: 'Svg',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}