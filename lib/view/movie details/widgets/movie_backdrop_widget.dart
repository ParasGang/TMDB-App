import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shirish_test_task/configurations/sizeconfig.dart';
import 'package:shirish_test_task/model/movie_details_model.dart';

class MovieBackdropWidget extends StatelessWidget {
  const MovieBackdropWidget({
    Key key,
    @required this.movieDetails,
  }) : super(key: key);

  final MovieDetailsModel movieDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.vertical(),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(250, 100),
            bottomRight: Radius.elliptical(250, 100),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.25),
              offset: Offset(0, 3.vertical()),
              blurRadius: 6.vertical(),
            )
          ]),
      child: ClipPath(
        clipper: ClippingClass(),
        child: CachedNetworkImage(
          imageUrl:
              "https://image.tmdb.org/t/p/w342${movieDetails.backdropPath}",
          placeholder: (context, url) =>
              Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Icon(Icons.error),
          height: double.maxFinite,
          width: double.maxFinite,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - SizeConfig.safeBlockVertical * 60);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - SizeConfig.safeBlockVertical * 60);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
