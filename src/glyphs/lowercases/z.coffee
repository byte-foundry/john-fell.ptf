exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 40 * spacing + (0)
		spacingRight: 40 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].x + ( contours[0].nodes[0].x - contours[0].nodes[1].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 200 + 235 * width + (0)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + 20 + serifHeight + serifCurve
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: 200 + 230 * width + (0)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 92 / 85 )
						angle: 167 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 89 / 85 )
						angle: 167 + 'deg'
						distr: 0
					})
		# 3:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[1].expandedTo[0].x
		# 			y: contours[0].nodes[1].expandedTo[0].y
		# 			dirOut: 180 + 'deg'
		# 			tensionOut: 1.8
		# 		1:
		# 			x: contours[3].nodes[0].x - 40
		# 			y: contours[3].nodes[0].y + 35
		# 			dirIn: - 90 + 'deg'
		# 			typeOut: 'line'
		# 		2:
		# 			x: contours[3].nodes[1].x - 15
		# 			y: contours[3].nodes[1].y
		# 			typeOut: 'line'
		# 		3:
		# 			x: contours[3].nodes[2].x - 65
		# 			y: contours[3].nodes[2].y - 140
		# 			typeOut: 'line'
		# 		4:
		# 			x: contours[3].nodes[3].x + 15
		# 			y: contours[3].nodes[3].y
		# 			dirOut: 50 + 'deg'
		# 			tensionOut: 1.4
		# 		5:
		# 			x: contours[0].nodes[1].expandedTo[1].x
		# 			y: contours[0].nodes[1].expandedTo[1].y
		# 			dirIn: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point )
		# 			tensionIn: 1.8
		# 4:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[1].nodes[1].expandedTo[0].x
		# 			y: contours[1].nodes[1].expandedTo[0].y
		# 			typeOut: 'line'
		# 		1:
		# 			x: contours[4].nodes[0].x + 15
		# 			y: contours[4].nodes[0].y + 130
		# 			typeOut: 'line'
		# 		2:
		# 			x: contours[4].nodes[1].x - 10
		# 			y: contours[4].nodes[1].y
		# 			dirOut: - 114 + 'deg'
		# 		3:
		# 			x: contours[1].nodes[1].expandedTo[1].x
		# 			y: contours[1].nodes[1].expandedTo[1].y
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(contours[2].nodes[0].expandedTo[0].x, contours[2].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 150 / 15 ) )
					y: Utils.onLine({
						x: Math.max(contours[2].nodes[0].expandedTo[0].x, contours[2].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 150 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
				1:
					x: Math.max(contours[2].nodes[0].expandedTo[1].x, contours[2].nodes[1].expandedTo[1].x )
					y: Utils.onLine({
						x: Math.max(contours[2].nodes[0].expandedTo[1].x, contours[2].nodes[1].expandedTo[1].x )
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
				2:
					anchorLine: contours[1].nodes[1].expandedTo[1].x
					rightWidth: 35
					serifMedianRight: -10
					left: false
					baseLeft: contours[1].nodes[1].expandedTo[0].point
			transformOrigin: Array( contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (8) + 'deg' ] )
		1:
			base: 'serif-v'
			parentAnchors:
				1:
					x: Math.min(contours[2].nodes[1].expandedTo[0].x, contours[0].nodes[1].expandedTo[0].x + serifHeight + serifCurve* ( 120 / 15 )  )
					y: Utils.onLine({
						x: Math.min(contours[2].nodes[1].expandedTo[0].x, contours[0].nodes[1].expandedTo[0].x + serifHeight + serifCurve* ( 120 / 15 )  )
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
				0:
					x: Math.min(contours[2].nodes[1].expandedTo[1].x, contours[0].nodes[1].expandedTo[0].x + serifHeight + serifCurve * ( 20 / 15 ) )
					y: Utils.onLine({
						x: Math.min(contours[2].nodes[1].expandedTo[1].x, contours[0].nodes[1].expandedTo[0].x + serifHeight + serifCurve * ( 20 / 15 ) )
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
				2:
					anchorLine: contours[2].nodes[0].expandedTo[1].x + 50
					leftWidth: 35
					rightWidth: - 25
					rightCurve: 0.5
					serifMedianLeft: -8
					directionX: -1
					maxWidthTop: xHeight + 40
			transformOrigin: Array( contours[0].nodes[1].expandedTo[0].x, contours[0].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (15) + 'deg' ] )
