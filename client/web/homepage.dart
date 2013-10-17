library homepage;

import 'package:dartdoc_viewer/item.dart';
import 'package:polymer/polymer.dart';

import 'member.dart';

@CustomTag("dartdoc-homepage")
class HomeElement extends MemberElement {
  HomeElement.created() : super.created();

  get defaultItem => null;
  get observables => const [#libraries];
  wrongClass(newItem) => newItem is! Home;

  get item => super.item;
  set item(newItem) => super.item = newItem;

  @observable get libraries => item == null ? [] : item.libraries;
}