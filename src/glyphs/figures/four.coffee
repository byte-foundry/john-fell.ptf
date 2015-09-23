exports.glyphs['four'] =
	unicode: '4'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth * 1.6 + 40 * spacing + (50) + 170 * width - 170
	parameters:
		spacingLeft: 10 * spacing + (10)
		spacingRight: 10 * spacing
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
					x: 320 * width + (85)
					y: descender * ( 220 / 250 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 1
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - ( 500 - 430 + thickness - (25 + 60 * width) )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 1
					})
				2:
					x: contours[0].nodes[0].x + ( contours[0].nodes[0].expand.width * ( 1 - contours[0].nodes[0].expand.distr ) ) * width
					y: xHeight + overshoot + ( 20 / 500 ) * xHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 11 / 85 )
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
							y: thickness * ( 15 / 85 )
							on: [ contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
						})
					y: thickness * ( 15 / 85 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 41 / 85 ) * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 35 / 85 ) * contrast
						angle: 0 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 15 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: Utils.onLine({
						y: thickness * ( 65 / 85 )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: thickness * ( 65 / 85 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 85 )
						angle: 90 + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x + 175
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 85 )
						angle: 82 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[2].nodes[2].expandedTo[1].x - serifHeight - serifCurve * ( 110 / 15 )
					y: contours[2].nodes[2].expandedTo[1].y
				1:
					x: contours[2].nodes[2].expandedTo[0].x - serifHeight - serifCurve * ( 60 / 15 )
					y: contours[2].nodes[2].expandedTo[0].y
				2:
					anchorLine: contours[2].nodes[2].expandedTo[1].x
					leftWidth: - 10
			# parentParameters:
				# serifMedian: serifMedian * 0.65
			transformOrigin: Array( contours[2].nodes[2].expandedTo[1].x, contours[2].nodes[2].expandedTo[1].y )
			transforms: Array( [ 'skewX', serifRotate * (8) + 'deg' ] )
	transformOrigin: Array( contours[1].nodes[0].x, contours[1].nodes[0].y )
	transforms: Array( [ 'translateX', 170 * width - 170 ] )
