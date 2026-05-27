import 'package:flutter/material.dart';
import 'package:gameplay_community_app/app/core/shared/extensions/app_localizations_extension.dart';
import 'package:gameplay_community_app/app/core/shared/themes/colors/app_colors.dart';

class ServerSelectorField extends StatelessWidget {
  const ServerSelectorField({super.key, required this.onTap, this.label, this.leading});

  final VoidCallback onTap;
  final String? label;
  final Widget? leading;

  static const _leadingSize = 40.0;

  OutlineInputBorder _inputOutlineBorder(ThemeData theme) {
    final enabledBorder = theme.inputDecorationTheme.enabledBorder;
    if (enabledBorder is OutlineInputBorder) return enabledBorder;
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(width: 1, color: theme.colorScheme.secondary),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;
    final colorScheme = theme.colorScheme;
    final textStyle = theme.textTheme;
    final l10n = context.l10n;
    final inputBorder = _inputOutlineBorder(theme);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: inputBorder.borderRadius,
        splashColor: colorScheme.primary.withValues(alpha: 0.12),
        highlightColor: colorScheme.primary.withValues(alpha: 0.08),
        child: Ink(
          decoration: BoxDecoration(gradient: AppColors.linearBackgroundCardShadowOf(brightness), border: Border.fromBorderSide(inputBorder.borderSide), borderRadius: inputBorder.borderRadius),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                Container(
                  width: _leadingSize,
                  height: _leadingSize,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: AppColors.serverSelectorLeadingOf(brightness), borderRadius: BorderRadius.circular(8)),
                  child: leading,
                ),
                Expanded(
                  child: Text(
                    label ?? l10n.formCreateRoomSelectServer,
                    textAlign: TextAlign.center,
                    style: textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w600, color: colorScheme.onSurface),
                  ),
                ),
                Icon(Icons.chevron_right, color: colorScheme.primary, size: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
