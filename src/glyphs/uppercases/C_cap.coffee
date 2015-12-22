exports.glyphs['C_cap'] =
	unicode: 'C'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 55 * spacing + (22)
		spacingRight: 50 * spacing
	anchors:
		0:
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + Math.min( 180, serifCurve * ( 180 / 15 ) ), true )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + Math.min( 130, serifCurve * ( 130 / 15 ) ) )
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], serifHeight + Math.min( 150, serifCurve * ( 150 / 15 ) ) )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], serifHeight + Math.min( 130, serifCurve * ( 130 / 15 ) ), true )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + 280 + 250 * width
					y: capHeight - ( 125 / 750 ) * capHeight + Math.min( - 20 * aperture + 20, - 125 * aperture + 125 )
					dirOut: 150 - 20 * aperture + 'deg'
					type: 'smooth'
					tensionIn: 1.45
					expand: Object({
						width: thickness * ( 30 / 85 ) * opticThickness + thickness * ( 10 / 85 ) * opticThickness * contrast
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.45
					expand: Object({
						width: thickness * ( 27 / 85 ) * opticThickness * contrast
						angle: - 68 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft
					y: capHeight * ( 375 / 750 )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.48
					y: - overshoot
					type: 'smooth'
					dirIn: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness * contrast
						angle: 68 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].x
					y: Math.max( - overshoot + thickness / 10, 40 + xHeight * ( 60 / 500 ) * aperture )
					y: ( 125 / 750 ) * capHeight - Math.min( 20 * aperture - 20, 125 * aperture - 125 )
					dirIn: Math.min( - 180 + ( 50 / 500 ) * xHeight * aperture , - 90 ) + 'deg'
					expand: Object({
						width: thickness * ( 30 / 85 ) * opticThickness + thickness * ( 10 / 85 ) * opticThickness * contrast
						angle: contours[0].nodes[4].dirIn - Math.PI / 2
						distr: 0.25
					})
	components:
		0:
			base: 'serif-c'
			parentAnchors:
				0:
					x: anchors[0].baseSerifTop_.x
					y: anchors[0].baseSerifTop_.y
				1:
					x: anchors[0].baseSerifBottom_.x
					y: anchors[0].baseSerifBottom_.y
				2:
					# left: false
					baseRight: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], 1, false, 1 )
					baseLeft: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], 1, true, 1 )
					angleTop: anchors[0].baseSerifBottom_.normal
					angleBottom: anchors[0].baseSerifTop_.normal
					maxWidthBottom: - 50
					rightWidth: 20
					leftWidth: 54
					serifMedianRight: 5
					serifMedianLeft: 8
					oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], serifHeight, false, 100 )
					oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], serifHeight, true, 100 )
					topAngle: contours[0].nodes[4].expandedTo[0].dirIn
					bottomAngle: contours[0].nodes[4].expandedTo[1].dirOut
		1:
			base: 'serif-c'
			parentAnchors:
				0:
					x: anchors[0].baseSerifBottom.x
					y: anchors[0].baseSerifBottom.y
				1:
					x: anchors[0].baseSerifTop.x
					y: anchors[0].baseSerifTop.y
				2:
					# right: false
					anchorLine: contours[0].nodes[0].expandedTo[0].x
					rightWidth: 50
					leftWidth: 20
					angleBottom: anchors[0].baseSerifBottom.normal
					angleTop: anchors[0].baseSerifTop.normal
					maxWidthTop: capHeight
					serifMedianRight: 5
					serifMedianLeft: 5
					baseRight: contours[0].nodes[0].expandedTo[0].point
					baseLeft: contours[0].nodes[0].expandedTo[1].point
					oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight, true, 100 )
					oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1], serifHeight, false, 100 )
					topAngle: contours[0].nodes[0].expandedTo[1].dirIn
					bottomAngle: contours[0].nodes[0].expandedTo[0].dirOut
					serifTransformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
					serifTransform: serifRotate * ( -15 ) + 15
			transformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
			transforms: Array(
				[ 'skewX', serifRotate * (-15) + 15 + 'deg' ]
			)
