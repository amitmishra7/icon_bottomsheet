import 'package:flutter/material.dart';

/// IconBottomSheet is a simple class developed for customized bottomSheet. This class creates a circular/square shape icon on the top of bottomSheee. It creates a circular icon with transparent padding on top of the bottomSheet. This circular widget is half overlapped on the centerTop of the bottomSheet. The bottomSheet is circular from the topLeft and topRight.

enum IconShape { circle, square, circleTop, circleBottom }

class IconBottomSheet extends StatelessWidget {
  const IconBottomSheet({
    Key? key,
    required this.child,
    required this.iconWidget,
    this.iconSize = 50,
    this.iconPadding = 16,
    this.iconShape = IconShape.circle,
  }) : super(key: key);

  /// [optional] iconSize resembles the height (same as width) of the icon widget that will be displayed.
  /// The iconSize should always be same as the height(same as width) of the iconWidget. Defaults to 50.
  final double iconSize;

  /// [optional] iconPadding resembles the padding from all sides to the iconWidget.
  /// iconPadding is transparent border around the iconWidget. Defaults to 16.
  final double iconPadding;

  /// [mandatory] child is the view that we are displaying in the bottomSheet.
  /// The child will always be displayed below the iconWidget.
  final Widget child;

  /// [mandatory] iconWidget is the widget that is displayed on top of bottomSheet.
  /// The height (same as width) of the iconWidget should always be same as the iconSize.
  final Widget iconWidget;

  /// [optional] iconShape defines the shape of the iconWidget. Defaults to circular
  final IconShape iconShape;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: iconSize / 2),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcOut),
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(color: Colors.white, backgroundBlendMode: BlendMode.dstOut),
                    ),
                    Positioned(
                      top: -iconSize / 2,
                      left: (MediaQuery.of(context).size.width - iconSize - iconPadding) / 2,
                      child: Container(
                        height: iconSize + iconPadding,
                        width: iconSize + iconPadding,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: borderRadius,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: iconPadding / 2,
            left: (MediaQuery.of(context).size.width - iconSize) / 2,
            child: Container(
              height: iconSize,
              width: iconSize,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: borderRadius,
              ),
              child: iconWidget,
            ),
          ),
          Positioned(top: iconSize + iconPadding, child: child)
        ],
      ),
    );
  }

  BorderRadius? get borderRadius {
    switch (iconShape) {
      case IconShape.circle:
        return BorderRadius.circular(500);
      case IconShape.square:
        return null;
      case IconShape.circleTop:
        return const BorderRadius.only(topRight: Radius.circular(500), topLeft: Radius.circular(500));
      case IconShape.circleBottom:
        return const BorderRadius.only(bottomRight: Radius.circular(500), bottomLeft: Radius.circular(500));
      default:
        return BorderRadius.circular(500);
    }
  }
}
