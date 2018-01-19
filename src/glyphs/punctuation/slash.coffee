exports.glyphs['slash'] =
	unicode: '/'
	glyphName: 'slash'
	characterName: 'SOLIDUS'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 30
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + 260 + (22)
					y: capHeight + overshoot * 2
					typeOut: 'line'
					expand:
						width: thickness * ( 50 / 85 )
						angle: 0
						distr: 0.5
				1:
					x: spacingLeft + (22)
					y: - 80
					typeIn: 'line'
					expand:
						width: thickness * ( 50 / 85 )
						angle: 0
						distr: 0.5
