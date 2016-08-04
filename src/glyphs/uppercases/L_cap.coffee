exports.glyphs['L_cap'] =
	unicode: 'L'
	glyphName: 'L'
	characterName: 'LATIN CAPITAL LETTER L'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (45) + serifWidth + 40
		spacingRight: 50 * spacing + 10 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: capHeight + diacriticHeight
		1:
			x: contours[0].nodes[0].expandedTo[1].x + serifWidth + 85
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 85 + 250 * width
					y: 0
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * opticThickness * ( 20 / 100 )
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[0].expand.width
						distr: 1
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + ( serifHeight + serifCurve ) * ( 80 / 35 )
					y: contours[1].nodes[0].expand.width
					tensionOut: 1.5
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( serifHeight + serifCurve ) * ( 80 / 35 )
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				2:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[0].y
					typeOut: 'line'
				3:
					x: contours[1].nodes[1].x
					y: contours[2].nodes[0].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max( capHeight / 2, contours[0].nodes[0].y - serifHeight - serifCurve * ( 65 / 15 ) )
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: Math.max( capHeight / 2, contours[0].nodes[0].y - serifHeight - serifCurve * ( 65 / 15 ) )
				2:
					anchorLine: capHeight
					leftWidth: 40
					rightWidth: 40
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: Math.min( capHeight / 2, contours[0].nodes[1].y + serifHeight + serifCurve * ( 65 / 15 ) )
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: Math.min( capHeight / 2, contours[0].nodes[1].y + serifHeight + serifCurve * ( 65 / 15 ) )
				2:
					leftWidth: 40
					right: false
		2:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(contours[1].nodes[1].expandedTo[1].x, contours[1].nodes[0].expandedTo[1].x - serifHeight - serifCurve * ( 165 / 15 ) )
					y: contours[1].nodes[0].expandedTo[0].y
				1:
					x: Math.max(contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].x - serifHeight - serifCurve * ( 165 / 15 ) )
					y: contours[1].nodes[0].expandedTo[1].y
				2:
					anchorLine: contours[1].nodes[0].expandedTo[1].x
					rightWidth: 100
					left: false
					baseLeft: contours[1].nodes[0].expandedTo[1].point
			parentParameters:
				# serifMedian: serifMedian * 0.75
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (15) + 'deg' ] )
