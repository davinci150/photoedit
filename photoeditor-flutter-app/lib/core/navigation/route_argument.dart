class RouteArgument {
  int id;
  String tag;
  dynamic param;

  RouteArgument({this.id, this.tag, this.param});

  @override
  String toString() {
    return '{id: $id, heroTag:${tag.toString()}}';
  }
}
