import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart';
import 'package:yinni_mobile/core/extensions/string_extension.dart';
import 'package:yinni_mobile/core/repositories/cache/image_cache_manager.dart';
import 'package:yinni_mobile/features/main/presentation/blocs/home_cubit.dart';
import 'package:yinni_mobile/features/main/presentation/view_models/home.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:double_tap_to_exit/double_tap_to_exit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';


@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> menus = [
    "haji", 
    "umroh",
    "internasional", 
    "domestik",
    "visa",
    "paket_promo"
  ];

  final ScrollController _scrollController = ScrollController();
  
  bool _showCompactMenu = false;
  
  final double hideThreshold = 300.0; 

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final bool shouldShowCompact = _scrollController.offset >= hideThreshold;

    if (shouldShowCompact != _showCompactMenu) {
      setState(() {
        _showCompactMenu = shouldShowCompact;
      });
    }
  }

  void _showOfflineSheet(BuildContext context, String lang) {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      constraints: BoxConstraints(
        maxHeight: 300,
        minHeight: 300
      ),
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'You are offline'.tr(lang),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black)
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Please check your internet connection.'.tr(lang),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black)
                ),
                const SizedBox(height: 16),
                Image.asset(
                  'assets/features/home/offline.png',
                  height: 120,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    backgroundColor: Colors.green[600],
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),
                  onPressed: () {          
                    context.router.pop();
                  },
                  child: Text(
                    'Try Again'.tr(lang),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ).then((_) {
      if (context.mounted) {
        context.read<HomeCubit>().reload(delay: Duration(seconds: 5));
      }
    });
  }

  // Widget _buildExpandedMenu(BuildContext context, BoxConstraints constraints, TextTheme textTheme) {
  //   return Container(
  //     width: double.infinity,
  //     padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20, bottom: 20, left: 20, right: 20),
  //     decoration: const BoxDecoration(
  //       borderRadius: BorderRadius.only(
  //         bottomLeft: Radius.circular(20),
  //         bottomRight: Radius.circular(20)
  //       ),
  //       image: DecorationImage(
  //         image: AssetImage("assets/features/home/background.png"),
  //         colorFilter: ColorFilter.mode(Color(0x4DC9AA50), BlendMode.srcATop),
  //         fit: BoxFit.fitWidth,
  //         alignment: Alignment.topCenter,
  //       ),
  //     ),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Align(
  //           alignment: Alignment.centerLeft,
  //           child: Text(
  //             "Produk Perjalanan", 
  //             style: textTheme.titleMedium?.copyWith(color: Colors.black)
  //           ),
  //         ),
  //         const SizedBox(height: 15),
  //         GridView.builder(
  //           shrinkWrap: true,
  //           physics: const NeverScrollableScrollPhysics(),
  //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //             crossAxisCount: 3,
  //             crossAxisSpacing: 10,
  //             mainAxisSpacing: 10,
  //             mainAxisExtent: 120, 
  //           ),
  //           padding: const EdgeInsets.all(0),
  //           itemCount: menus.length,
  //           itemBuilder: (BuildContext context, int index) {
  //             final menu = menus[index];
  //             return Container(
  //               padding: const EdgeInsets.all(2),
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 mainAxisSize: MainAxisSize.min,
  //                 children: [
  //                   ElevatedButton(
  //                     onPressed: () {},
  //                     style: ElevatedButton.styleFrom(
  //                       backgroundColor: const Color(0xFF2E9E39),
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(5),
  //                         side: const BorderSide(color: Colors.white, width: 1),
  //                       ),
  //                       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
  //                       elevation: 4,
  //                       overlayColor: Colors.white,
  //                       surfaceTintColor: Colors.white,
  //                       splashFactory: InkRipple.splashFactory,
  //                       shadowColor: Colors.black87,
  //                     ),
  //                     child: Center(
  //                       child: Image.asset(
  //                         "assets/features/home/$menu.png",
  //                         height: 30,
  //                         width: 30,
  //                         color: Colors.white
  //                       ),
  //                     )
  //                   ),
  //                   const SizedBox(height: 6),
  //                   Text(
  //                     menu.replaceAll("_", " ").toProperCase(),
  //                     style: textTheme.bodyMedium?.copyWith(color: Colors.black)
  //                   )
  //                 ],
  //               )
  //             );
  //           },
  //         ),
  //       ],
  //     )
  //   );
  // }

  // Widget _buildCompactMenu(BuildContext context, double topPadding, TextTheme textTheme) {
  //   const double fixedBarHeight = 90; 
  //   final double compactMenuHeight = fixedBarHeight + MediaQuery.of(context).padding.top;
    
  //   return AnimatedPositioned(
  //     top: _showCompactMenu ? 0.0 : -compactMenuHeight,
  //     left: 0,
  //     right: 0,
  //     duration: const Duration(milliseconds: 300),
  //     curve: Curves.easeOut,
      
  //     child: Container(
  //       height: compactMenuHeight,
  //       padding: EdgeInsets.only(top: topPadding + 10, bottom: 10),
  //       decoration: BoxDecoration(
  //         image: DecorationImage(
  //           image: AssetImage("assets/features/home/background.png"),
  //           colorFilter: ColorFilter.mode(Color(0x4DC9AA50), BlendMode.srcATop),
  //           fit: BoxFit.fitWidth,
  //           alignment: Alignment.topCenter,
  //         ),
  //         boxShadow: [
  //           BoxShadow(
  //             color: Colors.black26,
  //             blurRadius: 5,
  //             spreadRadius: 2,
  //           )
  //         ]
  //       ),
  //       child: SingleChildScrollView(
  //         scrollDirection: Axis.horizontal,
  //         padding: const EdgeInsets.symmetric(horizontal: 10),
  //         child: Row(
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: menus.map((menu) {
  //             return Padding(
  //               padding: const EdgeInsets.symmetric(horizontal: 5.0),
  //               child: ElevatedButton.icon(
  //                 onPressed: () {},
  //                 icon: Image.asset(
  //                   "assets/features/home/$menu.png", 
  //                   height: 18,
  //                   width: 18, 
  //                   color: Colors.white
  //                 ),
  //                 label: Text(
  //                   menu.replaceAll("_", " ").toProperCase(),
  //                   style: textTheme.bodyMedium?.copyWith(color: Colors.white),
  //                 ),
  //                 style: ElevatedButton.styleFrom(
  //                   backgroundColor: const Color(0xFF2E9E39),
  //                   shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(5),
  //                     side: const BorderSide(color: Colors.white, width: 1),
  //                   ),
  //                   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  //                 ),
  //               ),
  //             );
  //           }).toList(),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildPromoWidget(
  //   TextTheme textTheme, 
  //   BoxConstraints constraints,
  //   { 
  //     Prducts? data,
  //     List<BankAccount>? bankAccounts,
  //     bool? loading = false,
  //     String? error
  //   }
  // ) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 20),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.only(left: 20),
  //               child: Column(
  //                 mainAxisSize: MainAxisSize.min,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Text("Paket Promo", style: textTheme.titleMedium?.copyWith(color: Colors.black, height: 1.3)),
  //                   Text(data?.date ?? "Loading...", style: textTheme.bodySmall?.copyWith(color: Color(0xFF9A9A9A), height: 1.5)),
  //                 ],
  //               ),
  //             ),
  //             GestureDetector(
  //               onTap: () async {
  //                 debugPrint("Forward Icon clicked");
  //               },
  //               child: Container(
  //                 color: Colors.transparent,
  //                 height: 40,
  //                 padding: const EdgeInsets.symmetric(horizontal: 20),
  //                 child: Center(
  //                   child: Icon(Icons.arrow_forward, size: 26, color: Colors.grey, weight: 900),
  //                 )
  //               ),
  //             )
  //           ],
  //         ),
  //         SizedBox(
  //           height: 240,
  //           width: constraints.maxWidth,
  //           child: ListView.builder(
  //             padding: const EdgeInsets.only(left: 20, top: 3),
  //             scrollDirection: Axis.horizontal,
  //             shrinkWrap: true,
  //             itemCount: max(data?.items.length ?? 0, 1),
  //             itemBuilder: (context, index) {
  //               final $PackageItem? item = data?.items.isNotEmpty ?? false ? data?.items[index] : null;
  //               if(loading ?? false || error != null) {
  //                 return Shimmer.fromColors(
  //                   baseColor: Color(0xFFEEEEEE),
  //                   highlightColor: Colors.white,
  //                   child: Container(
  //                     padding: const EdgeInsets.all(10),
  //                     margin: const EdgeInsets.only(top: 5, bottom: 15, right: 20),
  //                     width: constraints.maxWidth - 40,
  //                     decoration: BoxDecoration(
  //                       color: Colors.white,
  //                       borderRadius: BorderRadius.circular(8),
  //                     ),
  //                   ),
  //                 );
  //               } else if(!(loading ?? false) && error == null && item == null) {
  //                 return Container(
  //                   padding: const EdgeInsets.all(10),
  //                   margin: const EdgeInsets.only(top: 5, bottom: 15, right: 20),
  //                   width: constraints.maxWidth - 40,
  //                   decoration: BoxDecoration(
  //                     color: Color(0xFFEEEEEE),
  //                     borderRadius: BorderRadius.circular(8),
  //                   ),
  //                   child: Center(
  //                     child: Text(
  //                       "Tidak Ada Promo Saat ini",
  //                       style: textTheme.bodyLarge?.copyWith(color: Colors.black),
  //                     )
  //                   )
  //                 );
  //               } else {
  //                 return Container(
  //                   padding: const EdgeInsets.all(10),
  //                   margin: const EdgeInsets.only(top: 5, bottom: 15, right: 20),
  //                   width: constraints.maxWidth - 40,
  //                   decoration: BoxDecoration(
  //                     color: Color(0xFFECECEC),
  //                     borderRadius: BorderRadius.circular(8),
  //                   ),
  //                   child: Row(
  //                     mainAxisSize: MainAxisSize.min,
  //                     mainAxisAlignment: MainAxisAlignment.start,
  //                     spacing: 15,
  //                     children: [
  //                       Image(
  //                         image: CachedNetworkImageProvider(
  //                           item?.image ?? "",
  //                           cacheKey: item?.image ?? "",
  //                           cacheManager: injector.get<ImageUrlCacheManager>(),
  //                         ),
  //                         fit: BoxFit.cover,
  //                         height: 210,
  //                         width: 170,
  //                         errorBuilder: (context, error, stackTrace) => Shimmer.fromColors(
  //                           baseColor: Color(0xFFDFDFDF),
  //                           highlightColor: Colors.white,
  //                           child: Container(
  //                             height: 210,
  //                             width: 170,
  //                             margin: const EdgeInsets.only(bottom: 5),
  //                             decoration: BoxDecoration(
  //                               color: Colors.white,
  //                             ),
  //                           ),
  //                         )
  //                       ),
  //                       Expanded(
  //                         child: SizedBox(
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             spacing: 10,
  //                             children: [
  //                               Text(item?.title ?? "", style: textTheme.bodyLarge?.copyWith(color: Colors.black, fontWeight: FontWeight.w600, height: 1)),
  //                               Column(
  //                                 mainAxisSize: MainAxisSize.min,
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: (item?.subItem ?? []).map(
  //                                   (e) => Row(
  //                                     mainAxisAlignment: MainAxisAlignment.start,
  //                                     mainAxisSize: MainAxisSize.min,
  //                                     children: [
  //                                       e.icon != "" 
  //                                       ? Padding(
  //                                         padding: const EdgeInsets.only(right: 7), 
  //                                         child: Image.asset(e.icon!, height: 11, width: 11)
  //                                       ) 
  //                                       : SizedBox.shrink(),
  //                                       e.widget ?? Expanded(
  //                                         child: Text(
  //                                           e.text ?? "", 
  //                                           style: textTheme.bodySmall?.copyWith(color: Colors.black),
  //                                           overflow: TextOverflow.ellipsis,
  //                                         ),
  //                                       )
  //                                     ],
  //                                   ),
  //                                 ).toList(),
  //                               ),
  //                               Column(
  //                                 children: bankAccounts?.map(
  //                                   (e)=> SizedBox(
  //                                     child: Column(
  //                                       children: [],
  //                                     ),
  //                                   ) 
  //                                 ).toList() ?? [],
  //                               )
  //                             ],
  //                           ),
  //                         ),
  //                       )
  //                     ]
  //                   )
  //                 );
  //               }
  //             } 
  //           ),
  //         )
  //       ],
  //     )
  //   );
  // }

  // Widget _buildYoutubeWidget(
  //   BuildContext context, 
  //   TextTheme textTheme,
  //   { 
  //     Youtube? data,
  //     bool? loading = false,
  //     String? error
  //   }
  // ) {
  //   return Padding(
  //     padding: const EdgeInsets.all(20),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         SizedBox(
  //           height: 1200,
  //         )
  //       ],
  //     )
  //   );
  // }

  // Widget _buildTopBarrier(Size size) {
  //   return Container(
  //     height: size.height,
  //     width: size.width,
  //     decoration: const BoxDecoration(
  //       image: DecorationImage(
  //         image: AssetImage("assets/features/home/background.png"),
  //         colorFilter: ColorFilter.mode(
  //           Color(0x4DC9AA50),
  //           BlendMode.srcATop
  //         ),
  //         fit: BoxFit.fitWidth, 
  //         alignment: Alignment.topCenter, 
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final topPadding = MediaQuery.of(context).padding.top;

    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit.create(context)..fetch(),
      child: DoubleTapToExit(
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              return BlocListener<HomeCubit, HomeState>(
                listenWhen: (previous, current) => (previous is LoadingHomeState) && (current is ErrorHomeState),
                listener: (context, state) {
                  if(state is ErrorHomeState && (state.offline ?? false)) {
                    _showOfflineSheet(context, "en");
                  }
                },
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      controller: _scrollController,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // _buildExpandedMenu(context, constraints, textTheme),
                          BlocBuilder<HomeCubit, HomeState>(
                            builder: (context, state) {
                              Home? home;
                              if(state is LoadingHomeState) {
                                home = state.loadingHome;
                              } else if(state is LoadedHomeState) {
                                home = state.home;
                              } else if(state is ErrorHomeState) {
                                home = state.errorHome;
                              }
                              return Column(
                                children: [
                                  // _buildPromoWidget(
                                  //   textTheme, 
                                  //   constraints,
                                  //   data: home?.promo,
                                  //   bankAccounts: home?.bankAccounts, 
                                  //   loading: home?.loading, 
                                  //   error: home?.error
                                  // ),
                                  // _buildYoutubeWidget(
                                  //   context,
                                  //   textTheme,
                                  //   data: home?.youtube,
                                  //   loading: home?.loading,
                                  //   error: home?.error
                                  // ),
                                ],
                              );
                            }
                          )
                        ],
                      ),
                    ),
                    // _buildTopBarrier(Size(constraints.maxWidth, topPadding)),
                    // _buildCompactMenu(context, topPadding, textTheme),
                  ],
                ),
              );
            }
          )
        ),
      ),
    );
  }
}