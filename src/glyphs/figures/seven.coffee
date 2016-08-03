# TODO: spacing
exports.glyphs['seven'] =
	unicode: '7'
	glyphName: 'seven'
	characterName: 'DIGIT SEVEN'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + 5
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (10)
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 109 + (16)
					y: ( 220 / 250 ) * descender
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 428 + (6)
					y: ( 485 / 500 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: ( 15 / 500 ) * xHeight
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point )
						distr: 1
					})
				4:
					x: 80
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point )
						distr: 1
					})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[0].nodes[4].expandedTo[1].x + serifHeight + serifCurve * ( 45 / 15 )
					y: contours[0].nodes[4].expandedTo[1].y
				1:
					x: contours[0].nodes[4].expandedTo[0].x + serifHeight + serifCurve * ( 60 / 15 )
					y: contours[0].nodes[4].expandedTo[0].y
				2:
					anchorLine: contours[0].nodes[4].expandedTo[0].x + 10
					directionX: -1
					rightWidth: - 20
					maxWidthTop: xHeight + 40
			parentParameters:
				serifCurve: serifCurve * ( 25 / 15 )
				# serifMedian: serifMedian * 0.7
			transformOrigin: Array( contours[0].nodes[4].expandedTo[1].x, contours[0].nodes[4].expandedTo[1].y )
			transforms: Array( [ 'skewX', serifRotate * (24) + 'deg' ] )
