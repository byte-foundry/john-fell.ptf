exports.glyphs['four'] =
	unicode: '4'
	glyphName: 'four'
	characterName: 'DIGIT FOUR'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 25
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
					x: contours[1].nodes[2].expandedTo[0].x + 200 * width + 200
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
					x: contours[0].nodes[0].expandedTo[1].x + 180 * width
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 65 / 85 ) * thickness
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
							y: contours[1].nodes[0].expandedTo[1].y
							on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
						})
						y: contours[1].nodes[0].expandedTo[1].y
					]
				2:
					x: spacingLeft + (10)
					y: 0
					typeIn: 'line'
					expand: Object({
						width: ( 15 / 85 ) * thickness
						distr: 0
						angle: 90 + 'deg'
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
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
					x: contours[1].nodes[0].expandedTo[1].x - serifHeight - serifCurve * ( 110 / 15 )
					y: contours[1].nodes[0].expandedTo[1].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x - serifHeight - serifCurve * ( 60 / 15 )
					y: contours[1].nodes[0].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[0].expandedTo[0].x
					leftWidth: - 10
			# parentParameters:
				# serifMedian: serifMedian * 0.65
			transformOrigin: Array( contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (8) + 'deg' ] )
