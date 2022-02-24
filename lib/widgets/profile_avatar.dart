import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final double radius;
  final double elevation;
  final double borderWidth;
  final Color borderColor;
  final Color backgroundColor;
  final Color foregroundColor;
  final String imageUrl;
  final Text initialsText;
  final bool showInitialTextAbovePicture;
  final bool cacheImage;
  final GestureTapCallback? onTap;
  final PlaceholderWidgetBuilder? placeHolder;
  final LoadingErrorWidgetBuilder? errorWidget;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;
  final ImageWidgetBuilder? imageBuilder;
  final bool? animateFromOldImageOnUrlChange;
  final Widget? child;
  final BoxFit imageFit;

  const ProfileAvatar(this.imageUrl,
      {Key? key,
      this.initialsText = const Text(''),
      this.cacheImage = true,
      this.radius = 50.0,
      this.borderWidth = 0.0,
      this.borderColor = Colors.white,
      this.backgroundColor = Colors.white,
      this.elevation = 0.0,
      this.showInitialTextAbovePicture = false,
      this.onTap,
      this.foregroundColor = Colors.transparent,
      this.placeHolder,
      this.errorWidget,
      this.imageBuilder,
      this.animateFromOldImageOnUrlChange,
      this.progressIndicatorBuilder,
      this.child,
      this.imageFit = BoxFit.cover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _initialsText = Center(child: initialsText);
    return GestureDetector(
      onTap: onTap,
      child: Material(
        type: MaterialType.circle,
        elevation: elevation,
        color: borderColor,
        child: Container(
          height: radius * 2,
          width: radius * 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(width: borderWidth, color: borderColor),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(radius),
              ),
              child: child == null
                  ? Stack(
                      fit: StackFit.expand,
                      children: imageUrl.isEmpty
                          ? [_initialsText]
                          : showInitialTextAbovePicture
                              ? [
                                  profileImage(),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: foregroundColor,
                                      borderRadius:
                                          BorderRadius.circular(radius),
                                    ),
                                  ),
                                  _initialsText,
                                ]
                              : [
                                  _initialsText,
                                  profileImage(),
                                ],
                    )
                  : ownChild(),
            ),
          ),
        ),
      ),
    );
  }

  Widget ownChild() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: SizedBox(
        height: radius * 2,
        width: radius * 2,
        child: child,
      ),
    );
  }

  Widget profileImage() {
    return cacheImage
        ? ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: CachedNetworkImage(
              fit: imageFit,
              imageUrl: imageUrl,
              errorWidget: errorWidget,
              placeholder: placeHolder,
              imageBuilder: imageBuilder,
              progressIndicatorBuilder: progressIndicatorBuilder,
              useOldImageOnUrlChange: animateFromOldImageOnUrlChange ?? false,
            ),
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Image.network(
              imageUrl,
              fit: imageFit,
            ),
          );
  }
}
