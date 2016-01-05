exports.glyphs['k'] =
	unicode: 'k'
	glyphName: 'k'
	characterName: 'LATIN SMALL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + (16) + serifWidth + 15
		spacingRight: 1 * spacing + serifWidth
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
					x: spacingLeft
					y: 0 + serifHeight + serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - serifHeight * ( 60 / 20 ) - serifCurve * ( 40 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 150 + 315 * width + (53) + thickness - 85
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[1].x - contours[2].nodes[0].expandedTo[0].x ) * 0.6
					y: xHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 36 / 85 ) * width
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight * ( 280 / 500 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 36 / 85 ) * width
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 235 * width + (55) + thickness - 85
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 90 / 85 ) + thickness * ( 20 / 85 ) * width
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].y
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 66 / 85 ) + thickness * ( 20 / 85 ) * width
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point )
						distr: 0
					})
	# components:
	# 	0:
	# 		base: 'serif'
	# 		parentAnchors:
	# 			0:
	# 				x: contours[0].nodes[0].expandedTo[1].x
	# 				y: contours[0].nodes[0].y
	# 			1:
	# 				x: contours[0].nodes[0].expandedTo[0].x
	# 				y: contours[0].nodes[0].y
	# 			2:
	# 				leftWidth: 1
	# 				rightWidth: 1
	# 	1:
	# 		base: 'attaque'
	# 		parentAnchors:
	# 			0:
	# 				x: contours[0].nodes[1].expandedTo[0].x
	# 				y: contours[0].nodes[1].y
	# 			1:
	# 				x: contours[0].nodes[1].expandedTo[1].x
	# 				y: contours[0].nodes[1].y
	# 			2:
	# 				anchorLine: ascenderHeight
	# 				leftWidth: 1.25
	# 	2:
	# 		base: 'serif'
	# 		parentAnchors:
	# 			0:
	# 				x: Utils.onLine({
	# 					y: 0 + serifHeight + serifCurve
	# 					on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
	# 				})
	# 				y: 0 + serifHeight + serifCurve
	# 			1:
	# 				x: Utils.onLine({
	# 					y: 0 + serifHeight + serifCurve
	# 					on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
	# 				})
	# 				y: 0 + serifHeight + serifCurve
	# 			2:
	# 				leftWidth: 1
	# 				rightWidth: 1
	# 				angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
	# 	3:
	# 		base: 'serif'
	# 		parentAnchors:
	# 			0:
	# 				x: Utils.onLine({
	# 					y: xHeight - serifHeight - serifCurve
	# 					on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
	# 				})
	# 				y: xHeight - serifHeight - serifCurve
	# 			1:
	# 				x: Utils.onLine({
	# 					y: xHeight - serifHeight - serifCurve
	# 					on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
	# 				})
	# 				y: xHeight - serifHeight - serifCurve
	# 			2:
	# 				anchorLine: xHeight
	# 				leftWidth: 1.2
	# 				rightWidth: 1.1
	# 				angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
	# 				directionY: -1
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
					leftWidth: 10
					rightWidth: 10
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: ascenderHeight
					leftWidth: 20
					right: false
					attaque: true
					attaqueAngle: 16
					directionY: -1
			parentParameters:
				serifMedian: serifMedian # - serifMedian / 2 * spurHeight

		2:
			base: 'serif'
			parentAnchors:
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve
				0:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve
				2:
					anchorLine: 0
					leftWidth: 20
					rightWidth: - 10
					# rightCurve: 0.0
					# leftCurve: 0.5
					baseRight: contours[2].nodes[0].expandedTo[1].point
					baseLeft: contours[2].nodes[0].expandedTo[0].point
					anchor_0: contours[2].nodes[0].expandedTo[1].x
					anchor_1: contours[2].nodes[0].expandedTo[0].x
					angle: Utils.lineAngle( contours[2].nodes[0].expandedTo[1].point ,contours[2].nodes[1].expandedTo[1].point )
					# left: false
		3:
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
						y: xHeight - serifHeight - serifCurve * ( 150 / 15 )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve * ( 150 / 15 )
				2:
					anchorLine: xHeight
					leftWidth: 120
					max1: contours[1].nodes[1].expandedTo[0].point
					# leftCurve: - 50
					# rightWidth: 0.9
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					baseRight: contours[1].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point )
					directionY: -1
