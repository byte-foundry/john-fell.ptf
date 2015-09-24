exports.glyphs['V_cap'] =
	unicode: 'V'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 15 * spacing + (10) + serifWidth
		spacingRight: 10 * spacing
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
					x: contours[1].nodes[0].expandedTo[1].x + 230 + 250 * width + (5)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 40 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * 0.45
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 115 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					expandedTo:
						[
							{
								x: Utils.onLine({
									y: thickness * ( (80 + Math.max(0, 55 - 55 * width + 55)) / 85 ) * opticThickness
									on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
								})
								y: thickness * ( (80 + Math.max(0, 55 - 55 * width + 55)) / 85 ) * opticThickness
								typeOut: 'line'
							}
							{
								x: Utils.onLine({
									y: thickness * ( (80 + Math.max(0, 55 - 55 * width + 55)) / 85 ) * opticThickness
									on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
								})
								y: thickness * ( (80 + Math.max(0, 55 - 55 * width + 55)) / 85 ) * opticThickness
								typeOut: 'line'
							}
						]
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
				2:
					anchorLine: capHeight
					leftWidth: 100
					rightWidth: 30
					baseRight: contours[0].nodes[0].expandedTo[1].point
					baseLeft: contours[0].nodes[0].expandedTo[0].point
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 120 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 40 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: Math.max( contours[1].nodes[1].expandedTo[0].y, capHeight - serifHeight - serifCurve * ( 40 / 15 ) )
				2:
					anchorLine: capHeight
					# leftWidth: 40
					rightWidth: 100
					baseRight: contours[1].nodes[0].expandedTo[1].point
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					directionY: -1
