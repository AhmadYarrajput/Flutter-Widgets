// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:ui_practicr/ExternalPackages/StaggeredGrid/Rendering/uniform_track.dart';

class UniformTrack extends MultiChildRenderObjectWidget {
  const UniformTrack({
    super.key,
    required this.division,
    this.spacing = 0,
    required this.direction,
    required super.children,
  })  : assert(spacing >= 0),
        assert(division > 0),
        assert(children.length <= division);

  final double spacing;
  final int division;
  final AxisDirection direction;

  @override
  RenderUniformTrack createRenderObject(BuildContext context) {
    return RenderUniformTrack(
      direction: direction,
      division: division,
      spacing: spacing,
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderUniformTrack renderObject,
  ) {
    renderObject
      ..direction = direction
      ..division = division
      ..spacing = spacing;
  }
}
