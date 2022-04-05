import 'package:flutter/material.dart';

inputdec(var title,var icn)=>new InputDecoration(
    fillColor: Colors.white,
    filled: true,
    border: new OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide:  BorderSide(color: Colors.black)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: Colors.cyan)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: Colors.black)),
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    hintStyle: TextStyle(
      fontSize: 16, // or whatever
      color: Colors.grey,
      height: 2.2, //                                <----- this was the key
    ),
    prefixIcon: Icon(icn, size: 20,color: Colors.black,),
    contentPadding: EdgeInsets.all(8),
    isDense: true,
    hintText: "$title");

inputstyle()=>const TextStyle(
    color: Colors.black,
    fontFamily: 'SFUIDisplay'
);