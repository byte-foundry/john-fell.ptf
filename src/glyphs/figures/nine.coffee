# TODO: spacing
exports.glyphs['nine'] =
	unicode: '9'
	glyphName: 'nine'
	characterName: 'DIGIT NINE'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 15
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
					x: contours[0].nodes[3].expandedTo[0].x + 30 + (5)
					y: capHeight
					dirOut: - Math.min(
						180,
						Math.max(
							168,
							168 * width
						)
					) + 'deg'
					expand: Object({
						width: thickness * ( 13 / 85 )
						angle: - 76 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + (21/85) * thickness
					y: capHeight * ( 280 / 750 )
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 96 / 85 )
						angle: - 28 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 240 / 465 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 ) * contrast
						angle: 101 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 265 - (21),
						contours[0].nodes[1].expandedTo[1].x + 0.25 * thickness + 10
					)
					y: capHeight * ( 240 / 750 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 - 3 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[5].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[5].expandedTo[0].x ) * ( 175 / 400 )
					y: xHeight * ( 460 / 500 )
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 27 / 85 ) * contrast
						angle: - 111 + 'deg'
						distr: 0.25
					})
				5:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: 90 + 'deg'
					expand: Object({
						width: thickness * ( 29 / 85 )
						angle: 180 + 121 + 'deg'
						distr: 1
					})
			transformOrigin: Array( (contours[0].nodes[0].expandedTo[1].x + spacingRight) / 2, 0 )
			transforms: Array(
				['translateY', ( xHeight ) ],
				['rotate', 180 + 'deg']
			)
