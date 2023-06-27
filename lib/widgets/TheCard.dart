import 'package:flutter/material.dart';

class TheCard extends StatelessWidget {
  const TheCard({Key? key, required this.top, required this.bottom})
      : super(key: key);

  final Widget top;
  final Widget bottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Navigator.canPop(context)
                ? InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.blue,
                    ),
                  )
                : null,
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: top,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: bottom,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
