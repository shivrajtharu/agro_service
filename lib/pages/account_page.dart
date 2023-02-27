import 'package:flutter/material.dart';
import '../data/users.dart';
import '../models/user.dart';
import '../utils.dart';
import '../widget/scrollable_widget.dart';
import '../widget/text_dialog_widget.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late List<User> users;

  @override
  void initState() {
    super.initState();

    this.users = List.of(allUsers);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: ScrollableWidget(child: buildDataTable()),
      appBar: AppBar(
        title: Text('Account'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
  );

  Widget buildDataTable() {
    final columns = ['Name', 'Address', 'Start', 'End'];

    return DataTable(
      columns: getColumns(columns),
      rows: getRows(users),
    );
  }

  List<DataColumn> getColumns(List<String> columns) {
    return columns.map((String column) {
      final isDate = column == columns[2];

      return DataColumn(
        label: Text(column),
        numeric: isDate,
      );
    }).toList();
  }
  List<DataColumn> Columns(List<String> columns) {
    return columns.map((String column) {
      final isDate = column == columns[3];

      return DataColumn(
        label: Text(column),
        numeric: isDate,
      );
    }).toList();
  }

  List<DataRow> getRows(List<User> users) => users.map((User user) {
    final cells = [user.Name, user.Address, user.start, user.end];

    return DataRow(
      cells: Utils.modelBuilder(cells, (index, cell) {
        final showEditIcon = index == 0 || index == 1;

        return DataCell(
          Text('$cell'),
          showEditIcon: showEditIcon,
          onTap: () {
            switch (index) {
              case 0:
                Name(user);
                break;
              case 1:
                Address(user);
                break;
            }
          },
        );
      }),
    );
  }).toList();

  Future Name(User editUser) async {
    final Name = await showTextDialog(
      context,
      title: 'Change Name',
      value: editUser.Name,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(Name: Name) : user;
    }).toList());
  }

  Future Address(User editUser) async {
    final Address = await showTextDialog(
      context,
      title: 'Change Address',
      value: editUser.Address,
    );

    setState(() => users = users.map((user) {
      final isEditedUser = user == editUser;

      return isEditedUser ? user.copy(Address: Address) : user;
    }).toList());
  }
}