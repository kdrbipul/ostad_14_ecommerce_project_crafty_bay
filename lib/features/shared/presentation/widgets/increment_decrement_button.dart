import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class IncrementDecrementButton extends StatefulWidget {
  const IncrementDecrementButton({
    super.key,
    required this.maxCount,
    required this.minCount,
    required this.initialValue,
    required this.onChange,
  });

  final int maxCount;
  final int minCount;
  final int initialValue;
  final Function(int) onChange;

  @override
  State<IncrementDecrementButton> createState() =>
      _IncrementDecrementButtonState();
}

class _IncrementDecrementButtonState extends State<IncrementDecrementButton> {

  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        _iconButton(CupertinoIcons.minus, (){
          if (_counter > widget.minCount){
            _counter --;
            widget.onChange(_counter);
            setState(() {});
          }
        }),
        Text('$_counter', style: TextStyle(fontSize: 24),),
        _iconButton(CupertinoIcons.plus, (){
          if (_counter < widget.maxCount){
            _counter ++;
            widget.onChange(_counter);
            setState(() {});
          }
        }),
      ],
    );
  }

  Widget _iconButton(IconData icon, VoidCallback onTap){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: .all(2),
        decoration: BoxDecoration(
          color: AppColors.themeColor,
          borderRadius: .circular(4)
        ),
        child: Icon(icon, color: Colors.white, size: 18,),
      ),
    );
  }
}
