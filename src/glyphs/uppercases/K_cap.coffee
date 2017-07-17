# TODO: serifArc bottom right
exports.glyphs['K_cap'] =
	unicode: 'K'
	glyphName: 'K'
	characterName: 'LATIN CAPITAL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (25) + serifWidth + 40
		spacingRight: 50 * spacing + 10 + serifWidth + 10
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
						width: thickness * opticThickness * ( 100 / 85 )
						angle: 0
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 545 - (10) + thickness - 85
					x: contours[0].nodes[0].expandedTo[1].x + 60 + 250 * width + (16)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( (30 + (10 * width)) / 85 ) * opticThickness
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight * ( 375 / 750 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( (15 + (10 * width)) / 85 ) * opticThickness
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: capHeight * ( 375 / 750 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 101 / 85 ) * opticThickness
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point )
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 70 + 250 * width + (60)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( (100 + (30 * width)) / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y + serifCurve * ( 60 / 15 )
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y + serifCurve * ( 60 / 15 )
				2:
					leftWidth: 40
					rightWidth: 40
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y - serifCurve * ( 60 / 15 )
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y - serifCurve * ( 60 / 15 )
				2:
					anchorLine: capHeight
					leftWidth: 40
					rightWidth: 40
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.max( contours[2].nodes[0].expandedTo[1].y, capHeight - serifHeight - serifCurve * ( 90 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: Math.max( contours[2].nodes[0].expandedTo[1].y, capHeight - serifHeight - serifCurve * ( 90 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.max( contours[2].nodes[0].expandedTo[1].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: Math.max( contours[2].nodes[0].expandedTo[1].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
				2:
					anchorLine: capHeight
					leftWidth: 75
					rightWidth: 30
					baseRight: contours[1].nodes[0].expandedTo[1].point
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					directionY: -1
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.min( contours[2].nodes[0].expandedTo[0].y , 0 + serifHeight + serifCurve * ( 65 / 15 ) )
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: Math.min( contours[2].nodes[0].expandedTo[0].y , 0 + serifHeight + serifCurve * ( 65 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.min( contours[2].nodes[0].expandedTo[0].y , 0 + serifHeight + serifCurve * ( 65 / 15 ) )
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: Math.min( contours[2].nodes[0].expandedTo[0].y , 0 + serifHeight + serifCurve * ( 65 / 15 ) )
				2:
					leftWidth: 65
					rightWidth: 20
					anchor_0: contours[2].nodes[0].expandedTo[0].x
					anchor_1: contours[2].nodes[0].expandedTo[1].x
					rightCurve: 0.6
					leftCurve: 1.1
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
					baseRight: contours[2].nodes[1].expandedTo[1].point
					baseLeft: contours[2].nodes[1].expandedTo[0].point
					left: false
					# max0: contours[1].nodes[1].expandedTo[0].point
					# max1: contours[1].nodes[1].expandedTo[1].point
