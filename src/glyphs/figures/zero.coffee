# TODO: spacing
exports.glyphs['zero'] =
	unicode: '0'
	glyphName: 'zero'
	characterName: 'DIGIT ZERO'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (10)
					y: xHeight * ( 250 / 500 )
					dirOut: 90 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness * ( 40 / 85 )
						distr: 0.25
						angle: 0 + 'deg'
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness * ( 35 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + xHeight + overshoot * 2 - (10)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness * ( 40 / 85 )
						distr: 0.25
						angle: 180 + 'deg'
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness * ( 35 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
