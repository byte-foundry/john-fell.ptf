# TODO: spacing
exports.glyphs['zero'] =
	unicode: '0'
	glyphName: 'zero'
	characterName: 'DIGIT ZERO'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					dirOut: Math.PI / 2
					tensionOut: 0.9
					expand:
						width: thickness * ( 40 / 85 )
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2
					y: xHeight + overshoot
					dirOut: 0
					tensionOut: 0.9
					expand:
						width: thickness * ( 35 / 85 )
						angle: - Math.PI / 2
						distr: 0
				2:
					x: spacingLeft + xHeight + overshoot * 2 - (10)
					y: contours[0].nodes[0].y
					dirOut: - Math.PI / 2
					tensionOut: 0.9
					expand:
						width: thickness * ( 40 / 85 )
						distr: 0.25
						angle: Math.PI
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: Math.PI
					tensionOut: 0.9
					expand:
						width: thickness * ( 35 / 85 )
						angle: Math.PI / 2
						distr: 0
