exports.glyphs['T_cap'] =
	unicode: 'T'
	glyphName: 'T'
	characterName: 'LATIN CAPITAL LETTER T'
	ot:
		advanceWidth: anchors[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 10 * spacing + (10) + serifWidth / 2
		spacingRight: 10 * spacing + serifWidth / 2
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: capHeight + diacriticHeight
		1:
			x: 45
			y: capHeight
		2:
			x: 470 + 250 * width
			y: capHeight
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
					x: anchors[1].x + ( anchors[2].x - anchors[1].x ) / 2
					y: 0 + serifHeight + serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[2].x - serifHeight - serifCurve * ( 100 / 15 )
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 85 )
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: anchors[1].x + serifHeight + serifCurve * ( 100 / 15 )
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 85 )
						angle: 90 + 'deg'
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
					leftWidth: 40
					rightWidth: 40
		1:
			base: 'serif-v'
			parentAnchors:
				0:
					x: anchors[2].x - serifHeight - serifCurve * ( 100 /15 )
					y: capHeight
				1:
					x: anchors[2].x - serifHeight - serifCurve * ( 100 /15 )
					y: capHeight - thickness * opticThickness * ( 25 / 85 )
				2:
					anchorLine: anchors[2].x
					leftWidth: 40
					maxWidthTop: capHeight + 40
			parentParameters:
				# serifMedian: serifMedian * 0.75
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[0].expandedTo[1].x, contours[1].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (-20) + 'deg' ] )
		2:
			base: 'serif-v'
			parentAnchors:
				0:
					x: anchors[1].x + serifHeight + serifCurve * ( 100 /15 )
					y: capHeight
				1:
					x: anchors[1].x + serifHeight + serifCurve * ( 100 /15 )
					y: capHeight - thickness * opticThickness * ( 25 / 85 )
				2:
					anchorLine: anchors[1].x
					leftWidth: 40
					directionX: -1
					maxWidthTop: capHeight + 40
			parentParameters:
				# serifMedian: serifMedian * 0.75
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[1].expandedTo[1].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (20) + 'deg' ] )
