import 'package:flutter/material.dart';

Widget chateItem(dynamic model) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.amber,
      radius: 30.0,
      backgroundImage: NetworkImage('${model.avatarUrl}'),
    ),
    title: Text(
      '${model.name}',
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    trailing: Text('${model.time}'),
    subtitle: Row(
      children: [
        const Icon(
          Icons.done_all,
          color: Colors.blue,
        ),
        const SizedBox(width: 3.0),
        Expanded(
          child: Text(
            '${model.message}',
            style: const TextStyle(
              color: Colors.grey,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    ),
  );
}

Widget callIten(dynamic callModel) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.amber,
      radius: 30.0,
      backgroundImage: NetworkImage('${callModel.avatarUrl}'),
    ),
    title: Text(
      '${callModel.name}',
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    trailing: const Icon(
      Icons.call,
      color: Colors.green,
    ),
    subtitle: Row(
      children: [
        const Icon(
          Icons.call_made_rounded,
          color: Colors.red,
        ),
        const SizedBox(width: 3.0),
        Text(
          '${callModel.time}',
          style: const TextStyle(
            color: Colors.grey,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    ),
  );
}
