class ProjectUtils {
  final String image;
  final String title;
  final String subTitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subTitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: "assets/projects/hobby_project_1.png",
    title: "OPSV",
    subTitle:
        "This application streamlines student identity verification with features like Single Sign-On enhancing security and convenience. It integrates with school systems, reducing paperwork and preventing fraud.",
  ),
];

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: "assets/projects/work_project_1.png",
    title: "Trackin",
    subTitle:
        "TrackIn gives you total control of your vehicle's safety and security.It covers everything from a basic GPS based tracking to advanced secure park.So that you get a worry less sleep at night.",
    androidLink: "https://play.google.com/store/apps/details?id=in.co.fleettrack&pcampaignid=web_share",
    webLink: "https://web.fleettrack.co.in/",
    iosLink: "https://apps.apple.com/in/app/trackin-vehicle-monitoring/id1543943019",
  ),
  ProjectUtils(
    image: "assets/projects/work_project_2.png",
    title: "Fleettrack",
    subTitle:
        "The Fleettrack GPS Security System offers real-time tracking, history videos, geo-fencing alerts, daily travel stats, and performance analytics, compatible with cars, buses, trucks, and bikes.",
    androidLink: "https://play.google.com/store/apps/details?id=in.gpstrack.lite&pcampaignid=web_share",
    iosLink: "https://apps.apple.com/in/app/fleettrack-gps/id6444408495",
  )
];
