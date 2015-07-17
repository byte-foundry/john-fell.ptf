exports.glyphs['w'] =
	unicode: 'w'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + serifWidth + 25 * spacing
	anchors:
		0:
			x: 395
			y: xHeight
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
					x: Utils.onLine({
						y: xHeight * ( 350 / 500 )
						on: [ contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[1].expandedTo[0].point ]
					}) + thickness * ( 33 / 85 ) * 0.25
					y: xHeight * ( 350 / 500 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 33 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 249 + (3)
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * 0.45
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 70 + (50)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 95 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width:
							if width < 1
							then ( thickness * ( 120 / 85 ) / 500 ) * xHeight
							else ( thickness * ( ( 120 - 35 * width + 35 ) / 85 ) / 500 ) * xHeight
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ) + Math.PI
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 685 * width + (10)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 40 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 509 + (3)
					x: contours[3].nodes[0].expandedTo[1].x + ( contours[2].nodes[0].expandedTo[0].x - contours[3].nodes[0].expandedTo[1].x ) * 0.35
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 330 * width + (38)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 95 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[1].expandedTo[0].x
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width:
							if width < 1
							then ( thickness * ( 120 / 85 ) / 500 ) * xHeight
							else ( thickness * ( ( 120 - 35 * width + 35 ) / 85 ) / 500 ) * xHeight
						angle: Utils.lineAngle( contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ) + Math.PI
						distr: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					leftWidth: 0.9
					rightWidth: 0.9
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[3].nodes[1].expandedTo[1].point, contours[3].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[3].nodes[1].expandedTo[0].point, contours[3].nodes[0].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					leftWidth: 0.9
					rightWidth: 0.9
					angle: Utils.lineAngle( contours[3].nodes[1].expandedTo[0].point, contours[3].nodes[0].expandedTo[0].point )
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					leftWidth: 0.9
					rightWidth: 0.9
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
					directionY: -1
