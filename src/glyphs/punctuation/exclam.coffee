exports.glyphs['exclam'] =
	unicode: '!'
	glyphName: 'exclam'
	characterName: 'EXCLAMATION MARK'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 70
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
					x: contours[0].nodes[1].x
					y: capHeight + overshoot / 2
					dirOut: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: 0
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: spacingLeft + (thickness * ( 104 / 85 )) / 2
					y: capHeight - 50 - ( 50 / 85 ) * thickness
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 104 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[0].x
					y: ( 210 / 500 ) * xHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 16 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: contours[0].nodes[1].x
					y: - overshoot / 2
