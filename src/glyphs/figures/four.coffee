exports.glyphs['four'] =
	unicode: '4'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth * 1.6 + 40 * spacing + (50) + 170 * width - 170
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 5 * spacing + (10)
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
					x: 190 + 130 * width + (85)
					y: descender * ( 220 / 250 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Utils.onLine({
						x: contours[0].nodes[0].expandedTo[1].x - thickness
						on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
					})
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 1
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x
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
					x: spacingLeft
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 15 / 85 ) * thickness
						distr: 0
						angle: 90 + 'deg'
					})
				1:
					expandedTo: [
						x: Utils.onLine({
							y: 0
							on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
						})
						y: 0
					,
						x: Utils.onLine({
							y: contours[1].nodes[2].expandedTo[1].y
							on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
						})
						y: contours[1].nodes[2].expandedTo[1].y
					]
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 120 * width
					y: 0
					dirOut: 90 + 'deg'
					typeIn: 'line'
					expand: Object({
						width: ( 65 / 85 ) * thickness
						distr: 0
						angle: 90 + 'deg'
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 40 / 85 ) * thickness
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 85 ) * thickness
						distr: 0
						angle: - 90 + 'deg'
					})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[1].nodes[2].expandedTo[1].x - serifHeight - serifCurve * ( 110 / 15 )
					y: contours[1].nodes[2].expandedTo[1].y
				1:
					x: contours[1].nodes[2].expandedTo[0].x - serifHeight - serifCurve * ( 60 / 15 )
					y: contours[1].nodes[2].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[2].expandedTo[0].x
					leftWidth: - 10
			# parentParameters:
				# serifMedian: serifMedian * 0.65
			transformOrigin: Array( contours[1].nodes[2].expandedTo[0].x, contours[1].nodes[2].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (8) + 'deg' ] )
