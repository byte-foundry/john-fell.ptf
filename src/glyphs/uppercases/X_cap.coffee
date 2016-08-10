# TODO: winding rules
exports.glyphs['X_cap'] =
	unicode: 'X'
	glyphName: 'X'
	characterName: 'LATIN CAPITAL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (30) + serifWidth + 25
		spacingRight: 50 * spacing + 10 + serifWidth + 15
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
					x: contours[2].nodes[0].expandedTo[0].x + 25
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 118 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[2].nodes[0].expandedTo[1].x + 220 + 250 * width + (0)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 119 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - ( 35 / 85 ) * thickness
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 45 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: capHeight * ( 395 / 750 )
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: capHeight * ( 395 / 750 )
					x: contours[2].nodes[1].x
					y: contours[2].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 40 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: Utils.onLine({
						y: capHeight * ( 380 / 750 )
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: capHeight * ( 380 / 750 )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.min( contours[2].nodes[1].y, 0 + serifHeight + serifCurve * ( 130 / 15 ) )
						on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
					})
					y: Math.min( contours[2].nodes[1].y, 0 + serifHeight + serifCurve * ( 130 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.min( contours[2].nodes[1].y, 0 + serifHeight + serifCurve * ( 100 / 15 ) )
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: Math.min( contours[2].nodes[1].y, 0 + serifHeight + serifCurve * ( 100 / 15 ) )
				2:
					leftWidth: 40
					rightWidth: 120
					baseRight: contours[2].nodes[0].expandedTo[1].point
					baseLeft: contours[2].nodes[0].expandedTo[0].point
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.min( capHeight / 2, 0 + serifHeight + serifCurve * ( 120 / 15 ) )
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: Math.min( capHeight / 2, 0 + serifHeight + serifCurve * ( 120 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.min( capHeight / 2, 0 + serifHeight + serifCurve * ( 120 / 15 ) )
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: Math.min( capHeight / 2, 0 + serifHeight + serifCurve * ( 120 / 15 ) )
				2:
					leftWidth: 60
					rightWidth: 20
					baseRight: contours[0].nodes[1].expandedTo[1].point
					baseLeft: contours[0].nodes[1].expandedTo[0].point
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.max( capHeight / 2, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: Math.max( capHeight / 2, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.max( capHeight / 2, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: Math.max( capHeight / 2, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
				2:
					anchorLine: capHeight
					directionY: -1
					leftWidth: 10
					rightWidth: 60
					baseRight: contours[0].nodes[0].expandedTo[1].point
					baseLeft: contours[0].nodes[0].expandedTo[0].point
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.max(10 + contours[1].nodes[1].y, capHeight - serifHeight - serifCurve * ( 150 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: Math.max(10 + contours[1].nodes[1].y, capHeight - serifHeight - serifCurve * ( 150 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.max(10 + contours[1].nodes[1].y, capHeight - serifHeight - serifCurve * ( 130 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: Math.max(10 + contours[1].nodes[1].y, capHeight - serifHeight - serifCurve * ( 130 / 15 ) )
				2:
					anchorLine: capHeight
					directionY: -1
					leftWidth: 70
					rightWidth: 20
					baseRight: contours[1].nodes[0].expandedTo[1].point
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
