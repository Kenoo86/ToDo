import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Provider
import '../provider/task.dart';

// Widget
import '../widget/task_widget.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _tasks = Provider.of<Tasks>(context).tasks(status: Status.Completed);
    return ListView.separated(
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: _tasks[i],
        child: TaskWidget(),
      ),
      itemCount: _tasks.length,
      separatorBuilder: (ctx, i) => Divider(
        thickness: 1.5,
        height: 0,
      ),
    );
  }
}
