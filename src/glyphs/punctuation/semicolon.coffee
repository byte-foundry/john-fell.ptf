exports.glyphs['semicolon'] =
	unicode: ';'
	glyphName: 'semicolon'
	characterName: 'SEMICOLON'
	base: 'comma'
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + (10)
		spacingRight: 50 * spacing + 70
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: 125
					y: xHeight + overshoot / 2 - 120
