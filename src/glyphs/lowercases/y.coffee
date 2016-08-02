exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5 + (0) + serifWidth + 20
		spacingRight: 50 * spacing + 5 + serifWidth + 20
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 30 + 250 * width + (16)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * 0.42
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 93 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expand.width
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
					x: contours[0].nodes[1].expandedTo[1].x
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: Utils.onLine({
						y: ( 140 / 250 ) * descender
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: ( 140 / 250 ) * descender
					# dirOut: Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 28 / 85 )
						angle: 180 - 56 + 'deg'
						distr: 1
					})
				2:
					x: 151 + (0)
					x: contours[2].nodes[1].expandedTo[1].x - 30
					y: contours[2].nodes[1].y - 25
					dirIn: 0 + 'deg'
					# dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 80 / 85 )
						angle: 180 - 126 + 'deg'
						distr: 1
					})
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[2].expandedTo[1].x
					y: contours[2].nodes[2].expandedTo[1].y
					typeIn: 'line'
				1:
					x: contours[2].nodes[2].expandedTo[1].x - ( contours[2].nodes[2].expandedTo[1].x - contours[3].nodes[2].x ) / 2
					y: contours[2].nodes[2].expandedTo[0].y + ( 95 / 85 ) * thickness
				2:
					x: contours[2].nodes[2].expandedTo[0].x - ( 50 / 85 ) * thickness
					y: contours[2].nodes[2].expandedTo[0].y + ( contours[3].nodes[1].y - contours[2].nodes[2].expandedTo[0].y ) / 2 + ( 5 / 85 ) * thickness
					dirOut: - 90 + 'deg'
					type: 'smooth'
				3:
					x: contours[2].nodes[2].expandedTo[0].x
					y: contours[2].nodes[2].expandedTo[0].y
		# TODO:
		# This contour is used to set the spacing
		# We need to call the advanceWidth of the component instead
		# like: glyphs['v'].ot.advanceWidth
		# 4:
		# 	skeleton: true
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: 395 + 17
		# 			y: xHeight - serifHeight * serifCurve
		# 			typeOut: 'line'
		# 			expand: Object({
		# 				width: thickness * ( 39 / 85 )
		# 				angle: 0 + 'deg'
		# 				distr: 0.25
		# 			})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve * ( 115 / 65 )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve * ( 115 / 65 )
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve * ( 115 / 65 )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve * ( 115 / 65 )
				2:
					anchorLine: xHeight
					leftWidth: 5
					rightWidth: 10
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					baseRight: contours[1].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve * ( 200 / 65 )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve * ( 200 / 65 )
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve * ( 130 / 65 )
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve * ( 130 / 65 )
				2:
					anchorLine: xHeight
					leftWidth: 30
					rightWidth: 20
					baseLeft: contours[0].nodes[0].expandedTo[0].point
					baseRight: contours[0].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
					directionY: -1
