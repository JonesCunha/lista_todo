import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Adicione uma tarefa',
                      hintText: 'Exemplo hinttext',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.all(14),
                  ),
                  child: const Icon(Icons.add, size: 30, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text('Tarefa 1'),
                  subtitle: Text('20/11/2021'),
                  leading: const Icon(
                    Icons.save_as,
                    size: 30,
                  ),
                  iconColor: Colors.green,
                  minLeadingWidth: 0,
                  onTap: () {
                    print('print on tap 1');
                  },
                ),
                ListTile(
                  title: Text('Tarefa 2'),
                  subtitle: Text('21/11/2021'),
                  onTap: () {
                    print('print on tap 2');
                  },
                  leading: const Icon(
                    Icons.person_2,
                    size: 30,
                  ),
                  minLeadingWidth: 0,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Expanded(child: Text('Você nao tem tarefas')),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Limpar Tudo'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: const EdgeInsets.all(14),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
