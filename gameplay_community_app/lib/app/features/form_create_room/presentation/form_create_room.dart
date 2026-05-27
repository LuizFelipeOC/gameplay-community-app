import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/media_size_extension.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/background_scaffold/background_scaffold_widget.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:go_router/go_router.dart';

class FormCreateRoom extends StatefulWidget {
  const FormCreateRoom({super.key});

  @override
  State<FormCreateRoom> createState() => _FormCreateRoomState();
}

class _FormCreateRoomState extends State<FormCreateRoom> {
  @override
  Widget build(BuildContext context) {
    final height = context.mediaSize.height;
    final width = context.mediaSize.width;

    return Scaffold(
      appBar: CustomAppBar(title: 'Agendar partida', onTap: context.pop),
      body: BackgroundScaffoldWidget(
        height: height,
        width: width,
        child: SingleChildScrollView(
          padding: .only(top: 32, left: 24, right: 24),
          child: Form(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(decoration: InputDecoration(labelText: 'Dia e mês')),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(decoration: InputDecoration(labelText: 'Horário')),
                    ),
                  ],
                ),
                const SizedBox(height: 22),

                TextFormField(decoration: InputDecoration(labelText: 'Descrição'), maxLines: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
