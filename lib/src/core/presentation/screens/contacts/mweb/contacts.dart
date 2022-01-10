
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/contacts/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/contacts/bloc/state.dart';

class ContactsMobileWebPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactsBloc, ContactsState>(
        builder: (context, state) {
          return Scaffold();
        },
        listener: (context, state) {
        });
  }

}