import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/app_localizations_extension.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/media_size_extension.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/background_scaffold/background_scaffold_widget.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/category_section/category_card_list.dart';
import 'package:gameplay_community_app/app/core/shared/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:gameplay_community_app/app/features/form_create_room/presentation/widgets/server_selector_field.dart';
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
    final l10n = context.l10n;

    return Scaffold(
      appBar: CustomAppBar(title: l10n.formCreateRoomTitle, onTap: context.pop),
      body: BackgroundScaffoldWidget(
        height: height,
        width: width,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 0, left: 12, right: 12),
          child: Column(
            children: [
              CategoryCardList(),

              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 28),
                child: Column(
                  children: [
                    ServerSelectorField(onTap: () {}),
                    const SizedBox(height: 22),
                    Form(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(decoration: InputDecoration(labelText: l10n.formCreateRoomDateLabel)),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: TextFormField(decoration: InputDecoration(labelText: l10n.formCreateRoomTimeLabel)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 22),
                          TextFormField(decoration: InputDecoration(labelText: l10n.formCreateRoomDescriptionLabel), maxLines: 3),
                          const SizedBox(height: 28),

                          ElevatedButton(onPressed: () {}, child: Text(l10n.formCreateRoomSubmitButton)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
