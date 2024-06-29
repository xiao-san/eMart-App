import 'package:emart_project/common_widgets/bg_widgets.dart';
import 'package:emart_project/consts/consts.dart';
import 'package:emart_project/views/category_screren/item_details.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key, required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(semibold).black.make(),
        ),
        body: Container(
          // color: Colors.black,
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => "Baby Clothing"
                          .text
                          .fontFamily(semibold)
                          .makeCentered()
                          .box
                          .white
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .size(120, 60)
                          .rounded
                          .make()),
                ),
              ),

              //items Container
              20.heightBox,

              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP6,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        // 10.heightBox,
                        // const Spacer(),
                        "Laptop 4GB/64GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\600"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(16)
                            .make(),
                      ],
                    )
                        .box
                        .white
                        .outerShadowSm
                        .roundedSM
                        .padding(const EdgeInsets.all(8))
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()
                        .onTap(() {
                      Get.to(() => const ItemDetails(title: "Dummy title"));
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
