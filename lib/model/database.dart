import 'package:flutter/material.dart';
import 'package:new_wra/model/event.dart';
import 'package:new_wra/pages/home/styles.dart';

class ModelSingleton {
  static final ModelSingleton _modelSingleton = ModelSingleton._internal();

  List _eventImages = [image1, image2, image3, image4, image5, image6];

  List get events => _eventImages;

  set events(List value) {
    _eventImages = value;
  }

  ModelSingleton._internal();

  factory ModelSingleton() {
    return _modelSingleton;
  }


}