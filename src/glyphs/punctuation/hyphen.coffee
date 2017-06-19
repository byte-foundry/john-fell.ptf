exports.glyphs['hyphen'] =
	unicode: '-'
	glyphName: 'hyphen'
	characterName: 'HYPHEN-MINUS'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 80
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
					x: spacingLeft
					y: xHeight * ( 285 / 500 ) * crossbar
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 70 / 85 ) * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 200 * width + 70
					y: xHeight * ( 285 / 500 ) * crossbar
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness * ( 70 / 85 ) * opticThickness
						angle: 90 + 'deg'
						distr: 0.5
