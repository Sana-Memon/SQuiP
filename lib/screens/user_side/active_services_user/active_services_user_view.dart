import 'package:flutter/material.dart';
import 'package:squip/custom_widgets/app_bar.dart';
import 'package:squip/custom_widgets/profile_list_tile.dart';
import 'package:squip/screens/user_side/active_services_user/active_services_user_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class ActiveServiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ActiveServiceViewModel>.reactive(
        viewModelBuilder: () => ActiveServiceViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              appBar: customerAppBar("Active Services"),
              body: FutureBuilder(
                future: viewModel.getActiveRequest(),
                builder: ((context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data.docs[index]["emergency"]),
                          trailing: IconButton(
                              onPressed: () {}, icon: Icon(Icons.add_circle)),
                        );
                      },
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
              ),
            ));
  }
}
