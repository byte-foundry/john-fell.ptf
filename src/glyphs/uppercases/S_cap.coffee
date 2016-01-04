exports.glyphs['S_cap'] =
	unicode: 'S'
	glyphName: "S"
	characterName: "LATIN CAPITAL LETTER S"
	ot:
		advanceWidth: contours[0].nodes[5].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 65 * spacing + (20)
		spacingRight: 40 * spacing
	anchors:
		0:
			x: contours[0].nodes[1].x
			y: capHeight + diacriticHeight
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + Math.min( 180, serifCurve * ( 180 / 15 ) ), true )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + Math.min( 90, serifCurve * ( 90 / 15 ) ) )
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[0], contours[0].nodes[7].expandedTo[0], serifHeight + Math.min( 150, serifCurve * ( 150 / 15 ) ), true )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[7].expandedTo[1], contours[0].nodes[6].expandedTo[1], serifHeight + Math.min( 120, serifCurve * ( 120 / 15 ) ) )
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
					x: contours[0].nodes[5].expandedTo[1].x - 40
					y: capHeight - 110
					dirOut: 115 + 'deg'
					expand: Object({
						width: thickness * ( 32 / 85 ) * opticThickness
						angle: - 130 + 'deg'
						distr: 0.25
					})
				1:
					x: 280 + (0)
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						angle: - 101 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft
					y: ( ( 565 - (32) ) / 700 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 87 / 85 ) * opticThickness
						angle: 24 + 'deg'
						distr: 0.25
					})
				3:
					x: 195 + (0)
					y: ( 367 / 700 ) * capHeight
					dirOut: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[4].expandedTo[0].point )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 56 + 'deg'
						distr: 0.25
					})
				4:
					x: 295 + (0)
					y: ( 320 / 700 ) * capHeight
					dirOut: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[4].expandedTo[0].point )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 106 / 85 ) * opticThickness
						angle: 45 + 'deg'
						distr: 0.25
					})
				5:
					x: 505 - (64)
					y: ( ( 185 - (32) ) / 700 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.5
					expand: Object({
						width: thickness * ( 89 / 85 ) * opticThickness
						angle: 180 - 164 + 'deg'
						distr: 0.25
					})
				6:
					x: 290 + (0)
					y: - overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 32 / 85 ) * opticThickness
						angle: 180 + 108 + 'deg'
						distr: 1
					})
				7:
					x: contours[0].nodes[2].expandedTo[0].x
					y: 150
					dirIn: - 70 + 'deg'
					expand: Object({
						width: thickness * ( 32 / 85 ) * opticThickness
						angle: - 70 - 90 + 'deg'
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
					directionX: -1
					baseRight: Utils.pointOnCurve( contours[0].nodes[7].expandedTo[0], contours[0].nodes[4].expandedTo[0], 1, false, 1 )
					baseLeft: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[1], contours[0].nodes[7].expandedTo[1], 1, true, 1 )
					angleTop: anchors[0].baseSerifBottom_.normal
					angleBottom: anchors[0].baseSerifTop_.normal
					maxWidthBottom: - 50
					rightWidth: 20
					leftWidth: 80
					serifMedianRight: 5
					serifMedianLeft: 5
					oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[7].expandedTo[1], contours[0].nodes[6].expandedTo[1], serifHeight, false, 100 )
					oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[0], contours[0].nodes[7].expandedTo[0], serifHeight, true, 100 )
					topAngle: contours[0].nodes[7].expandedTo[0].dirOut
					bottomAngle: contours[0].nodes[7].expandedTo[1].dirIn
					serifTransformOrigin: Array( contours[0].nodes[7].expandedTo[0].x, contours[0].nodes[7].expandedTo[0].y )
					serifTransform: serifRotate * ( -10 ) + 10
			transformOrigin: Array( contours[0].nodes[7].expandedTo[0].x, contours[0].nodes[7].expandedTo[0].y )
			transforms: Array(
				[ 'skewX', serifRotate * ( -10 ) + 10 + 'deg' ]
			)
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
					maxWidthTop: capHeight + overshoot
					serifMedianRight: 5
					serifMedianLeft: 5
					baseRight: contours[0].nodes[0].expandedTo[0].point
					baseLeft: contours[0].nodes[0].expandedTo[1].point
					oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight, true, 100 )
					oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1], serifHeight, false, 100 )
					topAngle: contours[0].nodes[0].expandedTo[1].dirIn
					bottomAngle: contours[0].nodes[0].expandedTo[0].dirOut
					serifTransformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
					serifTransform: serifRotate * ( -18 ) + 18
			transformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
			transforms: Array(
				[ 'skewX', serifRotate * (-18) + 18 + 'deg' ]
			)
