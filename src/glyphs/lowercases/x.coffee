exports.glyphs['x'] =
	unicode: 'x'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 5 * spacing + serifWidth + 20 + (11)
		spacingRight: 20 * spacing + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft - 10
					y: xHeight
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 104 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[2].nodes[1].expandedTo[1].x + 280 * width + (25)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 104 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 280 * width - (15),
						contours[0].nodes[1].expandedTo[0].x
					)
					y: xHeight
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: xHeight * ( 240 / 500 ) + Math.min( 0, - ( 50 / 85 ) * thickness + 50 )
						on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
					})
					y: xHeight * ( 240 / 500 ) + Math.min( 0, - ( 50 / 85 ) * thickness + 50 )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 23 / 85 ) * width
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: xHeight * ( 240 / 500 )
						on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
					})
					y: xHeight * ( 240 / 500 )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 23 / 85 ) * width
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: spacingLeft
					y: 0
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve * ( 190 / 65 )
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve * ( 190 / 65 )
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve * ( 150 / 65 )
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve * ( 150 / 65 )
				2:
					anchorLine: xHeight
					leftWidth: -10
					rightWidth: 15
					baseLeft: contours[0].nodes[0].expandedTo[0].point
					baseRight: contours[0].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: serifHeight + serifCurve * ( 180 / 65 )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve * ( 180 / 65 )
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve * ( 190 / 65 )
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve * ( 190 / 65 )
				2:
					leftWidth: 15
					rightWidth: 0
					baseLeft: contours[0].nodes[1].expandedTo[0].point
					baseRight: contours[0].nodes[1].expandedTo[1].point
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve * ( 190 / 65 )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve * ( 190 / 65 )
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve * ( 180 / 65 )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve * ( 180 / 65 )
				2:
					anchorLine: xHeight
					leftWidth: 25
					rightWidth: 10
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					baseRight: contours[1].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					directionY: -1
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: serifHeight + serifCurve * ( 190 / 65 )
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve * ( 190 / 65 )
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve * ( 190 / 65 )
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve * ( 190 / 65 )
				2:
					leftWidth: 10
					rightWidth: 35
					baseLeft: contours[2].nodes[1].expandedTo[0].point
					baseRight: contours[2].nodes[1].expandedTo[1].point
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
