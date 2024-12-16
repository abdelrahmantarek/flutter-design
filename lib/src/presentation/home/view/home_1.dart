
part of '../home.dart';

class HomeView1 extends StatefulWidget {
  static const String routeName = "/HomeView1";
  const HomeView1({super.key});
  @override
  State<HomeView1> createState() => _HomeView1State();
}

class _HomeView1State extends State<HomeView1> {

  Future<dynamic> onRefresh() async {
    return true;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (c,q){
            return [

              SliverAppBar(
                centerTitle: true,
                elevation: 0.0,
                pinned: true,
                expandedHeight: 90,
                collapsedHeight: 70,
                flexibleSpace: const FlexibleSpaceBar(
                  centerTitle: true,
                ),
                title: const Text("الرئيسية"),
                actions: [

                  const SizedBox(width: 10,),

                  IconButton(
                    onPressed: (){

                    },
                    icon: const FaIcon(FontAwesomeIcons.search),
                  ),

                  const SizedBox(width: 10),

                ],
              ),
            ];
          },
          body: SizedBox(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [


                Row(
                  children: [
                    const SizedBox(width: 20,),
                    Text(
                      [
                        "مرحبا عدنان!",
                        "جد ما تريد في الاقسام",
                      ].join("\n"),
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black54,
                        height: 1.1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),

                const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0
                  ),
                  child: StaggeredGrid.count(
                    crossAxisCount: 4, // عدد الأعمدة
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: [

                      // عناصر مختلفة الأحجام
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2.0,
                        child: buildCard(
                          title: [
                            "كلمات",
                            "السر"
                          ].join("\n"),
                          subtitle: "4.9",
                          reviews: "25 كلمة سر",
                          gradientColors: [Colors.purple.withOpacity(0.3), Colors.deepPurpleAccent],
                          icon: const FaIcon(
                            FontAwesomeIcons.lock,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2.3,
                        child: buildCard(
                          title: [
                            "فواتير",
                            "المشتريات",
                          ].join("\n"),
                          subtitle: "4.9",
                          reviews: "3643 فاتوره",
                          gradientColors: [Colors.indigoAccent.withOpacity(0.3), Colors.indigo],
                          icon: const FaIcon(
                            FontAwesomeIcons.toiletPaper,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.7,
                        child: buildCard(
                          title: [
                            "الاوراق",
                            "الحكومية"
                          ].join("\n"),
                          subtitle: "4.9",
                          gradientColors: [Colors.greenAccent.withOpacity(0.3), Colors.green],
                          icon: const FaIcon(
                            FontAwesomeIcons.listCheck,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2.0,
                        child: buildCard(
                          title: [
                            "الموظفين",
                            "والعاملين"
                          ].join("\n"),
                          subtitle: "4.9",
                          reviews: "25 موظف",
                          gradientColors: [Colors.orangeAccent.withOpacity(0.3), Colors.orange],
                          icon: const FaIcon(
                            FontAwesomeIcons.users,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2.0,
                        child: buildCard(
                          title: [
                            "فاتورة",
                            "عرض السعر"
                          ].join("\n"),
                          subtitle: "4.9",
                          reviews: "33 فاتورة",
                          gradientColors: [Colors.deepOrangeAccent.withOpacity(0.3), Colors.deepOrange],
                          icon: const FaIcon(
                            FontAwesomeIcons.moneyBillTrendUp,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),


                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: buildCard(
                          title: [
                            "الشركات",
                          ].join("\n"),
                          subtitle: "4.9",
                          gradientColors: [Colors.deepOrangeAccent.withOpacity(0.3), Colors.deepOrange],
                          icon: const FaIcon(
                            FontAwesomeIcons.buildingCircleCheck,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),





                    ],
                  ),
                ),




              ],
            ),
          ),
        )
    );
  }

  Widget buildCard({
    required String title,
    required String subtitle,
    String? reviews,
    required List<Color> gradientColors, // Gradient colors
    required dynamic icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          // Top-left shadow for "highlight"
          BoxShadow(
            color: gradientColors.first.withOpacity(0.3), // Lighter color for top-left
            offset: const Offset(0, -2), // Top-left direction
            blurRadius: 10,
          ),
          // Bottom-right shadow for "depth"
          BoxShadow(
            color: gradientColors.last.withOpacity(0.3), // Darker color for bottom-right
            offset: const Offset(0, 6), // Bottom-right direction
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // Icon
          (icon is IconData) ? Icon(icon, color: Colors.white, size: 50) : icon,

          const SizedBox(height: 12),
          // Title
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Reviews
          if(reviews != null)...{
            const SizedBox(height: 4),
            Text(
              reviews,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),

          }
        ],
      ),
    );
  }
}
