exports.glyphs['N_cap'] =
	unicode: 'N'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 40 * spacing + (0) + serifWidth + 40
		spacingRight: 40 * spacing + serifWidth + 40
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 ) * opticThickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 ) * opticThickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 200 + 250 * width
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: capHeight * ( ( 135 / 85 ) * thickness / 750 )
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: capHeight * ( ( 135 / 85 ) * thickness / 750 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * (( 100 / 85 ) / 750 ) * capHeight * opticThickness                            ##### FIXME #####
						angle: Utils.lineAngle( contours[2].nodes[1].point, contours[2].nodes[0].point ) + Math.PI / 2   ##### FIXME #####
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x - (thickness * ( 124 / 85 ) * opticThickness) / 2
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 124 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.1
					})
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[1].nodes[1].expandedTo[0].x
					y: Utils.onLine({
						x: contours[1].nodes[1].expandedTo[0].x
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					typeOut: 'line'
				3:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve * ( 100 / 15 )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: 0 + serifHeight + serifCurve * ( 100 / 15 )
				1:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve * ( 100 / 15 )
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: 0 + serifHeight + serifCurve * ( 100 / 15 )
				2:
					leftWidth: 60
					rightWidth: 60
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 100 / 15 )
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 100 / 15 )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 100 / 15 )
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 100 / 15 )
				2:
					anchorLine: capHeight
					leftWidth: 60
					rightWidth: 60
					directionY: -1
					angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].expandedTo[1].y
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 35 / 15 )
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 35 / 15 )
				2:
					anchorLine: capHeight
					leftWidth: 0
					directionY: -1
					right: false
					baseRight: contours[2].nodes[1].expandedTo[1].point
					baseLeft: contours[2].nodes[1].expandedTo[0].point
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
