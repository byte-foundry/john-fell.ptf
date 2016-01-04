exports.glyphs['two'] =
	unicode: '2'
	glyphName: "two"
	characterName: "DIGIT TWO"
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + 23 * spacing
	transforms: Array(
		['skewX', slant + 'deg']
	)
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
					x: 44 + (10)
					y: ( 295 / 500 ) * xHeight - (2)
					dirOut: 79 + 'deg'
					expand: Object({
						width: thickness * ( 14 / 85 )
						angle: 180 - 12 + 'deg'
						distr: 0.25
					})
				1:
					x: 275 + (0)
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: Math.min( thickness * ( 78 / 85 ), 120 )
						angle: 180 - 124 + 'deg'
						distr: 1
					})
				2:
					x: 355 * width + (22)
					y: ( 335 / 500 ) * xHeight + (5)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.3
					expand: Object({
						width: thickness * ( 89 / 85 )
						angle: 13 + 'deg'
						distr: 0.25
					})
				3:
					x: 30
					y: 0
					dirIn: 27 + 'deg'
					dirIn: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[0].expandedTo[1].point ) * 0.88
					tensionIn: 0.9
					type: 'smooth'
					expand: Object({
						width: ( 15 / 85 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[0].nodes[3].expandedTo[0].x
								y: 0
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[3].expandedTo[0].x + thickness * ( 128 / 85 ) * width
								y: contours[1].nodes[1].expandedTo[1].y
								typeIn: 'line'
							}
						]
				1:
					x: 430 * width + (0)
					x: contours[0].nodes[2].x + ( 30 + 25 * width )
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 89 / 85 )
						angle: 58 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 110 / 15 )
					y: contours[1].nodes[1].expandedTo[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 60 / 15 )
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[1].x
					leftWidth: - 10
					left: false
					baseLeft: contours[1].nodes[1].expandedTo[0].point
					max0: contours[1].nodes[0].expandedTo[1].point
					max1: contours[1].nodes[0].expandedTo[0].point
			parentParameters:
				# serifMedian: serifMedian * 0.65
				midWidth: midWidth * 0.9
			transformOrigin: Array( contours[1].nodes[1].expandedTo[1].x, contours[1].nodes[1].expandedTo[1].y )
			transforms: Array( [ 'skewX', serifRotate * (32) + 'deg' ] )
