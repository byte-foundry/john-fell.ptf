exports.glyphs['Z_cap'] =
	unicode: 'Z'
	glyphName: 'Z'
	characterName: 'LATIN CAPITAL LETTER Z'
	ot:
		advanceWidth: contours[2].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 10 + serifWidth / 2 * serifRotate
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + 200 * width + 385 + (0)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 45 + (0)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 28 / 85 )
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
					x: contours[0].nodes[0].x - 4
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
						width: thickness * ( 105 / 85 )
						angle: ( Math.PI / 2 ) + Math.acos( (thickness * ( 20 / 85 )) / (thickness * ( 105 / 85 )) ) 
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 95 / 85 )
						angle: ( Math.PI / 2 ) + Math.acos( (thickness * ( 20 / 85 )) / (thickness * ( 95 / 85 )) )
						distr: 0
					})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(contours[1].nodes[0].expandedTo[1].x, contours[1].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 140 / 15 ) )
					y: Utils.onLine({
						x: Math.max(contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 140 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
				1:
					x: Math.max(contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 140 / 15 ) )
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[0].x
					rightWidth: 90
					left: false
					baseLeft: contours[1].nodes[1].expandedTo[0].point
			parentParameters:
				serifHeight: serifHeight * ( 26 / 20 )
				serifMedian: serifMedian * 0.77
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (14) + 'deg' ] )
		1:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.min(contours[0].nodes[0].expandedTo[1].x, contours[0].nodes[1].expandedTo[1].x + serifHeight + serifCurve * ( 150 / 15 ) )
					y: contours[0].nodes[1].expandedTo[0].y
				1:
					x: Math.min(contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[1].expandedTo[0].x + serifHeight + serifCurve * ( 150 / 15 ) )
					y: Utils.onLine({
						x: Math.max(contours[0].nodes[1].expandedTo[0].x, contours[0].nodes[1].expandedTo[0].x + serifHeight + serifCurve * ( 150 / 15 ) )
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
				2:
					anchorLine: contours[0].nodes[1].expandedTo[0].x
					leftWidth: 105
					right: false
					baseRight: contours[0].nodes[1].expandedTo[0].point
					directionX: -1
			parentParameters:
				serifHeight: serifHeight * ( 28 / 20 )
				serifMedian: serifMedian * 0.93
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[0].nodes[1].expandedTo[0].x, contours[0].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (8) + 'deg' ] )
