# TODO: spacing
exports.glyphs['zero'] =
	unicode: '0'
	glyphName: 'zero'
	characterName: 'DIGIT ZERO'
	ot:
		advanceWidth: width * 545 + thickness * 2 - ( 85 * 2 )
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (10)
		spacingRight: 50 * spacing + 10
	anchors:
		0:
			x: ( 525 + (37) ) * width
			y: xHeight * ( 250 / 500 )
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
					x: 45 + (12)
					y: anchors[0].y
					dirOut: 90 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness * ( 40 / 85 )
						distr: 0.25
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
					x: anchors[0].x
					y: anchors[0].y
					dirOut: - 90 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness * ( 40 / 85 )
						distr: 0.25
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
