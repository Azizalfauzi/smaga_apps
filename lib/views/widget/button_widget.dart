part of 'widget.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  const ButtonWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: kPrimaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
          textStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      onPressed: () {},
      child: Text(title),
    );
  }
}
