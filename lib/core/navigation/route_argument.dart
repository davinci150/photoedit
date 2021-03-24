class RouteArgument {
  RouteArgument({this.id, this.tag, this.param});

  int id;
  String tag;
  dynamic param;

  @override
  String toString() {
    return '{id: $id, heroTag:${tag.toString()}}';
  }
}
