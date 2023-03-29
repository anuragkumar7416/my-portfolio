class Project {
  final String name;
  final String desc;
  final String icon;
  final String backgroundImage;
  final bool onIos;
  final bool onWeb;
  final bool onAndroid;
  final bool isDark;

  Project(this.name, this.desc, this.icon, this.backgroundImage,this.isDark,
      {this.onIos = false, this.onWeb = false, this.onAndroid = false});
}
