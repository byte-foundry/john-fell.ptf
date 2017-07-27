exports.glyphs['F_cap'] =
	unicode: 'F'
	glyphName: 'F'
	characterName: 'LATIN CAPITAL LETTER F'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (25) + serifWidth + 40
		spacingRight: 50 * spacing + 40 + serifWidth / 2
	anchors:
		0:
			x: 0
			y: 0
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
					x: spacingLeft
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 213 + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + 313
					)
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 20 / 100 ) * contrast
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[0].expand.width
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: contours[2].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 28 / 100 ) * contrast
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 147 + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + 247
					)
					y: capHeight * ( 385 / 750 ) * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[2].nodes[0].expand.width
						distr: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.min(
						contours[2].nodes[0].expandedTo[0].y,
						serifHeight + serifCurve * ( 65 /15 )
					)
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: Math.min(
						contours[2].nodes[0].expandedTo[0].y,
						serifHeight + serifCurve * ( 65 /15 )
					)
				2:
					anchorLine: 0
					leftWidth: 40
					rightWidth: 40
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y - serifHeight - serifCurve * ( 65 / 15 )
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y - serifHeight - serifCurve * ( 65 / 15 )
				2:
					anchorLine: capHeight
					leftWidth: 40
					directionY: -1
					right: false
		2:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(contours[2].nodes[0].expandedTo[1].x + 10, contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[2].nodes[0].expandedTo[1].y
				1:
					x: Math.max(contours[2].nodes[0].expandedTo[1].x + 10, contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[2].nodes[0].expandedTo[0].y
				2:
					anchorLine: contours[2].nodes[1].expandedTo[0].x + Math.max( 0, serifHeight * serifArc )
					leftWidth: 80
					rightWidth: 80
					max0: contours[2].nodes[0].expandedTo[0].point
					# serifMedianRight: - 10 * serifMedian
					# serifMedianLeft: - 10 * serifMedian
			parentParameters:
				serifMedian: serifMedian - 0.25 * ( ( 100 - serifHeight ) / 80 )
				serifHeight: serifHeight * (16/20)
		3:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[1].nodes[0].expandedTo[0].y
				1:
					x: Math.max(contours[1].nodes[1].expandedTo[1].x, contours[1].nodes[0].expandedTo[1].x - serifHeight - serifCurve * ( 180 / 15 ) )
					y: contours[1].nodes[0].expandedTo[1].y
				2:
					anchorLine: contours[1].nodes[0].expandedTo[0].x
					right: false
					leftWidth: 60
					baseRight: contours[1].nodes[0].expandedTo[0].point
			parentParameters:
				# serifMedian: serifMedian * 0.75
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[1].expandedTo[1].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (-5) + 'deg' ] )
