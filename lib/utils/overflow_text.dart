import 'package:flutter/material.dart';

class DTOverflowTextDetector extends StatelessWidget {
  ///Es el mensaje que mostrará el Tooltip
  ///de haber overflow dentro del widget.
  /* final BuildContext context; */
  final String message;

  ///Esta lista tendría que recibir unicamente
  ///widgets del tipo Text, OpText, Optexts  y OpAmountTwoParts .
  final List<Widget> children;
  final int maxLines;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  const DTOverflowTextDetector(/* this.context, */ {
    super.key,
    required this.message,
    this.maxLines = 1,
    this.textAlign,
    this.textDirection,
    this.children = const [],
  });

  List<InlineSpan> convertWidgetListToInlineSpanList(BuildContext context, List<Widget> widgetList) {
    List<InlineSpan> inlineSpanList = [];
    for (Widget widget in widgetList) {
      if (widget is Text) {
        inlineSpanList.add(TextSpan(text: widget.data, style: widget.style));
      }
      // if (widget is Text) {
      //   inlineSpanList.add(TextSpan(
      //     text: widget.data,
      //     style: widget.style,
      //   ));
      // }
    }
    return inlineSpanList;
  }

  @override
  Widget build(BuildContext context) {
    List<InlineSpan> listaTextos = [];
    late TextPainter tp;
    listaTextos.addAll(convertWidgetListToInlineSpanList(context, children));

    tp = TextPainter(
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.center,
      textDirection: textDirection ?? TextDirection.ltr,
      text: TextSpan(
        children: listaTextos,
      ),
    );

    return LayoutBuilder(
      builder: (context, constrains) {
        tp.layout(maxWidth: constrains.maxWidth);
        final overflowed = tp.didExceedMaxLines;
        return overflowed //si hay overflow retorna tooltip con el widget.message
            ? Tooltip(
                triggerMode: TooltipTriggerMode.tap,
                message: message,
                child: SizedBox(
                  width: constrains.maxWidth,
                  child: RichText(
                    maxLines: maxLines,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(children: listaTextos),
                  ),
                ),
              )
            : RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: listaTextos,
                ),
              );
      },
    );
  }
}
