
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:Color(0xffFFCD7A),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter Notes', style: TextStyle(
              color: Colors.black,
              fontSize: 26)),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text(
                'I am student fluter in home ,,,',
                style: TextStyle(color: Colors.black.withOpacity(.5),
                fontSize: 18),
              ),
            ),
            trailing:  IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete, color: Colors.black,size: 30,),
          ),
          ),
         
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('May21 , 2026', style: TextStyle(color: Colors.black.withOpacity(.5)),),
          )
        ],
      ),
    );
  }
}
