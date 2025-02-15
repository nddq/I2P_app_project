// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/DashboardHeader.dart';
import '../components/MenuController.dart';
import '../responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class SOSRoute extends StatelessWidget {
  const SOSRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            // It takes 5/6 part of the screen
            flex: 5,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomPaint(
                      painter: DashboardHeader(),
                      child: SizedBox(
                          height: 350,
                          child: Column(
                            children: [
                              const SizedBox(height: 100),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 100),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(width: 20),
                                      if (!Responsive.isDesktop(context))
                                        IconButton(
                                          icon: const Icon(Icons.menu),
                                          iconSize: 40,
                                          onPressed: context
                                              .read<MenuController>()
                                              .controlMenu,
                                        ),
                                      const SizedBox(width: 30),
                                      const Text("Resources",
                                          style: TextStyle(
                                              color: Color(0xff0B3F24),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 40)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: const MySquares(),
                    )
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}

class MySquares extends StatelessWidget {
  const MySquares({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(children: [
        const Align(
            alignment: Alignment.topLeft,
            child: Text("Mental Health and Wellbeing",
                style: TextStyle(fontSize: 18))),
        Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Row(children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Ink(
                          height: MediaQuery.of(context).size.height * .15,
                          width: MediaQuery.of(context).size.width * .15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/mcourt.png"),
                                  fit: BoxFit.fill)),
                          child: InkWell(
                            onTap: () async {
                              const url = "https://www.miraclecourt.com/";
                              if (await canLaunch(url)) {
                                await launch(
                                  url,
                                );
                              }
                            },
                          )),
                      const Text("Miracle Court"),
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(children: [
                    Ink(
                        height: MediaQuery.of(context).size.height * .15,
                        width: MediaQuery.of(context).size.width * .15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/savingcain.jpeg"),
                                fit: BoxFit.fill)),
                        child: InkWell(
                          onTap: () async {
                            const url = "http://www.savingcain.org/";
                            if (await canLaunch(url)) {
                              await launch(
                                url,
                              );
                            }
                          },
                        )),
                    const Text("SavingCain.org"),
                  ])),
              Column(
                children: [
                  Ink(
                      height: MediaQuery.of(context).size.height * .15,
                      width: MediaQuery.of(context).size.width * .15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/headspace.png"),
                              fit: BoxFit.fill)),
                      child: InkWell(
                        onTap: () async {
                          const url = "https://www.headspace.com/";
                          if (await canLaunch(url)) {
                            await launch(
                              url,
                            );
                          }
                        },
                      )),
                  const Text("Headspace"),
                ],
              )
            ])),
        const Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("Deradicalization NGOs",
                    style: TextStyle(fontSize: 18)))),
        Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Ink(
                            height: MediaQuery.of(context).size.height * .20,
                            width: MediaQuery.of(context).size.width * .30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: AssetImage("assets/images/p4p.png"),
                                    fit: BoxFit.fill)),
                            child: InkWell(
                              onTap: () async {
                                const url = "https://www.parents4peace.org/";
                                if (await canLaunch(url)) {
                                  await launch(
                                    url,
                                  );
                                }
                              },
                            )),
                        const Text("Parents for Peace"),
                      ],
                    )),
                Column(
                  children: [
                    Ink(
                        height: MediaQuery.of(context).size.height * .20,
                        width: MediaQuery.of(context).size.width * .30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/beyondbar.png"),
                                fit: BoxFit.fill)),
                        child: InkWell(
                          onTap: () async {
                            const url = "https://beyondbarriersusa.org/";
                            if (await canLaunch(url)) {
                              await launch(
                                url,
                              );
                            }
                          },
                        )),
                    const Text("Beyond Barriers"),
                  ],
                ),
              ],
            )),
        const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Counseling & Therapy Directories",
                    style: TextStyle(fontSize: 18)))),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Ink(
                        height: MediaQuery.of(context).size.height * .20,
                        width: MediaQuery.of(context).size.width * .25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/psychtoday.png"),
                                fit: BoxFit.fill)),
                        child: InkWell(
                          onTap: () async {
                            const url = "https://www.psychologytoday.com/us";
                            if (await canLaunch(url)) {
                              await launch(
                                url,
                              );
                            }
                          },
                        )),
                    const Text("Psychology Today"),
                  ],
                )),
            Column(
              children: [
                Ink(
                    height: MediaQuery.of(context).size.height * .20,
                    width: MediaQuery.of(context).size.width * .25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/zocdoc.png"),
                            fit: BoxFit.fill)),
                    child: InkWell(
                      onTap: () async {
                        const url = "https://www.zocdoc.com/";
                        if (await canLaunch(url)) {
                          await launch(
                            url,
                          );
                        }
                      },
                    )),
                const Text("ZocDoc"),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
