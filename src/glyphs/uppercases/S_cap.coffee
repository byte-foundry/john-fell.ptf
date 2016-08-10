# TODO: width / serifs / thickness
exports.glyphs['S_cap'] =
	unicode: 'S'
	glyphName: 'S'
	characterName: 'LATIN CAPITAL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 40
	anchors:
		0:
			x: contours[0].nodes[1].x + ( contours[0].nodes[3].x - contours[0].nodes[1].x ) * 0.5
			y: capHeight + diacriticHeight
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + Math.min( 180, serifCurve * ( 180 / 15 ) ), true )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + Math.min( 90, serifCurve * ( 90 / 15 ) ) )
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[5].expandedTo[0], contours[0].nodes[6].expandedTo[0], serifHeight + Math.min( 150, serifCurve * ( 150 / 15 ) ), true )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[1], contours[0].nodes[5].expandedTo[1], serifHeight + Math.min( 120, serifCurve * ( 120 / 15 ) ) )
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
					x: contours[0].nodes[4].expandedTo[1].x - 40 - (7)
					y: capHeight - ( 110 / 750 ) * capHeight
					# dirOut: Math.max(
					# 	1.8,
					# 	Math.PI - ( 1.06 / 750 ) * capHeight
					# ) # 120 + 'deg'
					dirOut: 115 / 180 * Math.PI
					type: 'smooth'
					expand: Object({
						width: ( 32 / 85 ) * thickness * opticThickness
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0.25
					})
				1:
					# x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					x: (contours[0].nodes[2].x + ( Math.cos( 26 / 180 * Math.PI) * 0.75 * ( 67 / 85 ) * thickness ) ) + ( contours[0].nodes[0].expandedTo[1].x - (contours[0].nodes[2].x + ( Math.cos( 26 / 180 * Math.PI) * 0.75 * ( 67 / 85 ) * thickness ) ) ) * ( 85 / 210 )
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 25 / 85 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + 15 + (19)
					y: contours[0].nodes[3].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[3].expandedTo[0].y ) * ( 160 / 290 ) + (8)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 87 / 85 ) * thickness * opticThickness
						angle: 26 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[5].x
					y: ( 375 / 750 ) * capHeight
					dirOut: Math.min(
						- 20,
						Math.max(
							- 25,
							- 20 - (15 - ( 15 / 85 ) * thickness * opticThickness) * width
						)
					) + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand: Object({
						width: ( 120 / 85 ) * thickness * opticThickness
						angle: 180 - 120 + 'deg'
						distr: 0.5
					})
				4:
					x: contours[0].nodes[6].expandedTo[1].x + 200 * width + 260 - (19)
					y: contours[0].nodes[5].expandedTo[1].y + (  contours[0].nodes[3].expandedTo[1].y - contours[0].nodes[5].expandedTo[1].y ) * ( 195 / 405 ) - (12)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 85 / 85 ) * thickness * opticThickness
						angle: 180 - 160 + 'deg'
						distr: 0.75
					})
				5:
					# x: contours[0].nodes[6].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[6].expandedTo[1].x ) * 0.5
					# x: Math.max(
					# 	contours[0].nodes[6].expandedTo[1].x + ( (contours[0].nodes[4].x + Math.cos( 20 / 180 * Math.PI ) * 0.25 * ( 70 / 85 ) * thickness) - contours[0].nodes[6].expandedTo[1].x ) * ( 170 / 330 ),
					# 	contours[0].nodes[6].expandedTo[0].x + ( (contours[0].nodes[4].x - Math.cos( 20 / 180 * Math.PI ) * 0.75 * ( 70 / 85 ) * thickness) - contours[0].nodes[6].expandedTo[0].x ) * ( 170 / 330 )
					# )
					x: contours[0].nodes[6].expandedTo[0].x + ( (contours[0].nodes[4].x - Math.cos( 20 / 180 * Math.PI ) * 0.75 * ( 70 / 85 ) * thickness) - contours[0].nodes[6].expandedTo[0].x ) * ( 135 / 230 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 32 / 85 ) * thickness * opticThickness * contrast
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				6:
					x: spacingLeft + (7)
					y: ( 150 / 750 ) * capHeight
					# dirIn: Math.min(
					# 	1.8,
					# 	Math.PI + ( 2 / 750 ) * capHeight
					# ) # 120 + 'deg'
					dirIn: -1.13446 # - 65 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 32 / 85 ) * thickness * opticThickness
						angle: contours[0].nodes[6].dirIn - Math.PI / 2
						distr: 0.75
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
					baseRight: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[0], contours[0].nodes[4].expandedTo[0], 1, false, 1 )
					baseLeft: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[1], contours[0].nodes[6].expandedTo[1], 1, true, 1 )
					angleTop: anchors[0].baseSerifBottom_.normal
					angleBottom: anchors[0].baseSerifTop_.normal
					maxWidthBottom: - 50
					rightWidth: 20
					leftWidth: 80
					serifMedianRight: 5
					serifMedianLeft: 5
					oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[1], contours[0].nodes[6].expandedTo[1], serifHeight, false, 100 )
					oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[6].expandedTo[0], contours[0].nodes[6].expandedTo[0], serifHeight, true, 100 )
					topAngle: contours[0].nodes[6].expandedTo[0].dirOut
					bottomAngle: contours[0].nodes[6].expandedTo[1].dirIn
					serifTransformOrigin: Array( contours[0].nodes[6].expandedTo[0].x, contours[0].nodes[6].expandedTo[0].y )
					serifTransform: serifRotate * ( -10 ) + 10
			transformOrigin: Array( contours[0].nodes[6].expandedTo[0].x, contours[0].nodes[6].expandedTo[0].y )
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
