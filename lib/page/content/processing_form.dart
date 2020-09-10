import 'package:flutter/material.dart';

class ProcessingForm extends StatelessWidget {
  final TextStyle activeTextStyle = TextStyle(
      color: Color(0xff32a0db),
      fontSize: 10,
      decoration: TextDecoration.underline);
  final TextStyle normalTextStyle =
      TextStyle(color: Color(0xffcecece), fontSize: 10);

  final Map<String, String> data;

  ProcessingForm(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffeeeeee),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("image/avatar.jpeg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "学生出校申请",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: data["name"],
                              style: activeTextStyle,
                            ),
                            TextSpan(
                                text: " ${data["out_time"]}",
                                style: normalTextStyle)
                          ]),
                        ),
                        Text(
                          "姓名:${data["name"]}",
                          style: normalTextStyle,
                        ),
                        Text(
                          "学院:${data["college"]}",
                          style: normalTextStyle,
                        ),
                        Text(
                          "班级:${data["class"]}",
                          style: normalTextStyle,
                        ),
                        Text(
                          "手机号:${data["phone"]}",
                          style: normalTextStyle,
                        ),
                        Text(
                          "申请出校理由:${data["reason"]}",
                          style: normalTextStyle,
                        ),
                        Text(
                          "去往地点:${data["place"]}",
                          style: normalTextStyle,
                        ),
                        Text(
                          "出校时间:${data["out_time"]}",
                          style: normalTextStyle,
                        ),
                        Text(
                          "返校时间:${data["return_time"]}",
                          style: normalTextStyle,
                        ),
                        Text(
                          "备注:${data["remark"]}",
                          style: normalTextStyle,
                        ),
                        Text(
                          "岗位:北方工业大学学生",
                          style: normalTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset("image/done.png"),
                ),
              )
            ],
          ),
          Container(
            color: Colors.white,
            child: Column(children: [
              Divider(
                height: 1,
              ),
              ActionCell(
                text: "表单预览",
                action: () => {},
              ),
              Divider(
                height: 1,
              ),
              ActionCell(
                text: "条形码",
                action: () => {},
              ),
            ]),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 36,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage("image/avatar.jpeg"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            data["teacher"],
                            style: activeTextStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                        height: 22,
                        child: RaisedButton(
                          color: Color(0xff04be01),
                          textColor: Colors.white,
                          child: Text(
                            "回复",
                            style: TextStyle(fontSize: 10),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("已通过", style: normalTextStyle,),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            data["approve_time"],
                            style: normalTextStyle,
                          ),
                        ],
                      ),
                      Text(
                        "用时${data["last_time"]}分钟",
                        style: normalTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ActionCell extends StatelessWidget {
  final String text;
  final Function action;

  ActionCell({this.text, this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 36,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Color(0xff626985)),
            ),
            Image.asset(
              "image/arrow.png",
              width: 10,
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
