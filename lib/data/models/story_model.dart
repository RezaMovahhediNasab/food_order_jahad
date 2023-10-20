import 'dart:math';

class StoryModel {
  String image;
  String avatar;
  String title;
  bool isLive;

  StoryModel(
      {required this.image,
      required this.avatar,
      required this.title,
      required this.isLive});
}

List<StoryModel> fakeStoryList = [
  StoryModel(
      image: 'https://picsum.photos/id/${Random().nextInt(100)}/500/600',
      avatar: 'https://picsum.photos/id/${Random().nextInt(500)}/500/600',
      title: 'Hendawi',
      isLive: true),
  StoryModel(
      image: 'https://picsum.photos/id/${Random().nextInt(100)}/500/600',
      avatar: 'https://picsum.photos/id/${Random().nextInt(500)}/500/600',
      title: 'Jack',
      isLive: false),
  StoryModel(
      image: 'https://picsum.photos/id/${Random().nextInt(100)}/500/600',
      avatar: 'https://picsum.photos/id/${Random().nextInt(500)}/500/600',
      title: 'Leo',
      isLive: false),
  StoryModel(
      image: 'https://picsum.photos/id/${Random().nextInt(100)}/500/600',
      avatar: 'https://picsum.photos/id/${Random().nextInt(500)}/500/600',
      title: 'Jiro',
      isLive: true),
  StoryModel(
      image: 'https://picsum.photos/id/${Random().nextInt(100)}/500/600',
      avatar: 'https://picsum.photos/id/${Random().nextInt(500)}/500/600',
      title: 'Mialn',
      isLive: false),
  StoryModel(
      image: 'https://picsum.photos/id/${Random().nextInt(100)}/500/600',
      avatar: 'https://picsum.photos/id/${Random().nextInt(500)}/500/600',
      title: 'Harvd',
      isLive: false),
];
