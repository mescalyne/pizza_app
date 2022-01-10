import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';

class MoreDetailMobileWebPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MoreDetailBloc, MoreDetailState>(
        builder: (context, state) {
          return Scaffold();
        },
        listener: (context, state) {
        });
  }

}