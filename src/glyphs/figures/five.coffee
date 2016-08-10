# TODO: spacing
exports.glyphs['five'] =
	unicode: '5'
	glyphName: 'five'
	characterName: 'DIGIT FIVE'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 30
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
					x: spacingLeft + 10
					y: - 230
					dirOut: 7 + 'deg'
					expand: Object({
						width: thickness * ( 16 / 85 )
						angle: 97 + 'deg'
						distr: 0.25
					})
				1:
					x: spacingLeft + 200 * width + 85 + (52)
					y: 20 + (23)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 80 / 85 )
						angle: 180 + 21 + 'deg'
						distr: 0.25
					})
				2:
					x: spacingLeft + 35 + (7)
					y: ( 195 / 520 ) * xHeight + (67)
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 90 / 85 )
						angle: 180 + 84 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max( contours[0].nodes[2].expandedTo[0].x - ( 40 / 85 ) * thickness, 50 )
					y: contours[0].nodes[2].expandedTo[0].y - contours[0].nodes[2].expand.width * contours[0].nodes[2].expand.distr
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 90 / 85 )
						angle: 180 + 84 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 80 / 85 )
						angle: - 108 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x - 50
					y: xHeight
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: - 100 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x + 55 * width
					y: xHeight
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 78 / 85 )
						angle: - 78 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 0 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				1:
					x: contours[1].nodes[0].expandedTo[1].x - serifHeight - serifCurve * ( 100 /15 )
					y: contours[1].nodes[0].expandedTo[1].y
				0:
					x: contours[1].nodes[0].expandedTo[0].x - serifHeight - serifCurve * ( 100 /15 )
					y: contours[1].nodes[0].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[0].expandedTo[0].x
					left: false
					# baseLeft: { x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y }
					baseLeft: contours[1].nodes[0].expandedTo[1].point
					max0: contours[1].nodes[1].expandedTo[1].point
					max1: contours[1].nodes[1].expandedTo[1].point
					maxWidthTop: xHeight + 40
			# parentParameters:
			# 	serifMedian: serifMedian * 0.75
			# 	midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[0].expandedTo[1].x, contours[1].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (10) + 'deg' ] )
