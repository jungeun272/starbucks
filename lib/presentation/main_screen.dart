import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Flutter code sample for [SliverAppBar].

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SliverAppBarExample(),
    );
  }
}

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  bool _pinned = true;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              //위젯을 담기 위해서 이걸 사용해야 함
              child: SizedBox(
                child: Image.asset('assets/images/banner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverAppBar(
              scrolledUnderElevation: 0,
              toolbarHeight: 48,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsetsDirectional.only(
                    start: 16, end: 16, top: 4, bottom: 4),
                title: Row(
                  children: [
                    Icon(Icons.email_outlined,
                        size: 24, color: Color(0xFF424242)),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Whats New',
                      style: TextStyle(fontSize: 18, color: Color(0xFF424242)),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Icon(Icons.local_activity_outlined,
                        size: 24, color: Color(0xFF424242)),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Coupon',
                      style: TextStyle(fontSize: 18, color: Color(0xFF424242)),
                    ),
                    Spacer(),
                    Icon(Icons.notifications_none,
                        size: 24, color: Color(0xFF424242)),
                  ],
                ),
              ),
              pinned: _pinned,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '내용 보기',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF6B6B6B)),
                        ),
                        Icon(Icons.arrow_right_alt_sharp,
                            size: 20, color: Color(0xFF6B6B6B)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '7',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF0C7A41),
                                  ),
                                ),
                                Icon(Icons.star,
                                    size: 18, color: Color(0xFF0C7A41)),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Untill Gold Level',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF0C7A41)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Image.asset('assets/images/graph.png'),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '3',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0C7A41),
                              height: 1),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '/10',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Color(0xFF0C7A41),
                            ),
                            SizedBox(
                              height: 3.7,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: Image.asset(
                      'assets/images/main_banner.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16, right: 16, top: 24, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'What\'s New',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF424242),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0C7A41),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6, right: 6, bottom: 24, top: 8),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    width: 220,
                                    height: 147,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.foodnews.co.kr/news/photo/201305/45098_3381_4254.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Container(
                                  child: SizedBox(
                                    width: 220,
                                    child: Text(
                                      '크리스마스엔 스타벅스 케...',
                                      style: TextStyle(
                                        color: Color(0xFF424242),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Container(
                                  child: SizedBox(
                                    width: 220,
                                    child: Text(
                                      '크리스마스의 특별한 순간을 스타벅스 케이크와 함께 하세요.',
                                      style: TextStyle(
                                        color: Color(0xFF7B7B7B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        height: 1,
                                        letterSpacing: -0.84,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6, right: 6, bottom: 24, top: 8),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    width: 220,
                                    height: 147,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://sitem.ssgcdn.com/94/98/56/item/2097001569894_i1_750.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Container(
                                  child: SizedBox(
                                    width: 220,
                                    child: Text(
                                      '크리스마스엔 스타벅스 케...',
                                      style: TextStyle(
                                        color: Color(0xFF424242),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Container(
                                  child: SizedBox(
                                    width: 220,
                                    child: Text(
                                      '크리스마스의 특별한 순간을 스타벅스 케이크와 함께 하세요.',
                                      style: TextStyle(
                                        color: Color(0xFF7B7B7B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        height: 1,
                                        letterSpacing: -0.84,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6, right: 6, bottom: 24, top: 8),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    width: 220,
                                    height: 147,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://image.edaily.co.kr/images/Photo/files/NP/S/2019/11/PS19112800186.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Container(
                                  child: SizedBox(
                                    width: 220,
                                    child: Text(
                                      '크리스마스엔 스타벅스 케...',
                                      style: TextStyle(
                                        color: Color(0xFF424242),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Container(
                                  child: SizedBox(
                                    width: 220,
                                    child: Text(
                                      '크리스마스의 특별한 순간을 스타벅스 케이크와 함께 하세요.',
                                      style: TextStyle(
                                        color: Color(0xFF7B7B7B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        height: 1,
                                        letterSpacing: -0.84,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6, right: 6, bottom: 24, top: 8),
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    width: 220,
                                    height: 147,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.news2day.co.kr/data2/content/image/2024/04/04/.cache/512/20240404500104.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Container(
                                  child: SizedBox(
                                    width: 220,
                                    child: Text(
                                      '크리스마스엔 스타벅스 케...',
                                      style: TextStyle(
                                        color: Color(0xFF424242),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Container(
                                  child: SizedBox(
                                    width: 220,
                                    child: Text(
                                      '크리스마스의 특별한 순간을 스타벅스 케이크와 함께 하세요.',
                                      style: TextStyle(
                                        color: Color(0xFF7B7B7B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        height: 1,
                                        letterSpacing: -0.84,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Image.asset('assets/images/list_banner.png', fit: BoxFit.cover,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 48.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: const Column(
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: Color(0xFF0C7A41),
                      ),
                      Text(
                        'Home',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xFF0C7A41)),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: const Column(
                    children: [
                      Icon(
                        Icons.payment,
                      ),
                      Text(
                        'pay',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: const Column(
                    children: [
                      Icon(
                        Icons.coffee_outlined,
                      ),
                      Text(
                        'order',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: const Column(
                    children: [
                      Icon(
                        Icons.shopping_bag_outlined,
                      ),
                      Text(
                        'shop',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: const Column(
                    children: [
                      Icon(
                        Icons.more_horiz_outlined,
                      ),
                      Text(
                        'other',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFF0C7A41),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0), // 원하는 radius 값 설정
        ),
        onPressed: () {  },
        label: Text('Delivery', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
        icon: Icon(Icons.delivery_dining, color: Colors.white,),
      ),
    );
  }
}
