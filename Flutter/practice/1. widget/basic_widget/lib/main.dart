import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("다양한 Flutter의 입력 알아보기"),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TestCheckBox(),
        TestRadio(),
        TestSlider(),
        TestSwitch(),
        TestPopup(),
      ],
    );
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    super.initState();

    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0],
            onChanged: (value) => changeValue(0, value ?? false)),
        Checkbox(
            value: values[1],
            onChanged: (value) => changeValue(1, value ?? false)),
        Checkbox(
            value: values[2],
            onChanged: (value) => changeValue(2, value ?? false)),
      ],
    );
  }

  void changeValue(int index, bool value) {
    setState(() {
      values[index] = value;
    });
  }
}

class TestRadio extends StatefulWidget {
  const TestRadio({super.key});

  @override
  State<TestRadio> createState() => _TestRadioState();
}

enum TestRadioValue {
  test1,
  test2,
  test3,
}

class _TestRadioState extends State<TestRadio> {
  TestRadioValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestRadioValue>(
            value: TestRadioValue.test1,
            groupValue: selectValue,
            onChanged: (value) => setState(() {
              selectValue = value;
            }),
          ),
          title: Text(TestRadioValue.test1.name),
          onTap: () => setState(() {
            if (selectValue != TestRadioValue.test1) {
              selectValue = TestRadioValue.test1;
            }
          }),
        ),
        ListTile(
          leading: Radio<TestRadioValue>(
            value: TestRadioValue.test2,
            groupValue: selectValue,
            onChanged: (value) => setState(() {
              selectValue = value;
            }),
          ),
          title: Text(TestRadioValue.test2.name),
          onTap: () => setState(() {
            if (selectValue != TestRadioValue.test2) {
              selectValue = TestRadioValue.test2;
            }
          }),
        ),
        ListTile(
          leading: Radio<TestRadioValue>(
            value: TestRadioValue.test3,
            groupValue: selectValue,
            onChanged: (value) => setState(() {
              selectValue = value;
            }),
          ),
          title: Text(TestRadioValue.test3.name),
          onTap: () => setState(() {
            if (selectValue != TestRadioValue.test3) {
              selectValue = TestRadioValue.test3;
            }
          }),
        ),
      ],
    );
  }
}

class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value.toString()),
        Slider(
          value: value,
          onChanged: (newValue) {
            setState(() {
              value = newValue;
            });
          },
          label: value.round().toString(),
          divisions: 100,
          max: 100, // 최댓값
          min: 0, // 최소값
          activeColor: Colors.red, // 슬라이더 색
        ),
      ],
    );
  }
}

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: value,
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            }),
        CupertinoSwitch(
            value: value,
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            })
      ],
    );
  }
}

class TestPopup extends StatefulWidget {
  const TestPopup({super.key});

  @override
  State<TestPopup> createState() => _TestPopupState();
}

enum TestValue {
  test1,
  test2,
  test3,
}

class _TestPopupState extends State<TestPopup> {
  TestValue selectedValue = TestValue.test1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(selectedValue.name.toString()),
        PopupMenuButton(
          itemBuilder: (context) {
            return TestValue.values
                .map((value) =>
                    PopupMenuItem(value: value, child: Text(value.name)))
                .toList();
          },
          onSelected: (newValue) {
            setState(() {
              selectedValue = newValue;
            });
          },
        ),
      ],
    );
  }
}
