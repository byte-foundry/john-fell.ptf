exports.glyphs['colon'] =
	unicode: ':'
	base: '.'
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 10 * spacing + (10)
		spacingRight: 10 * spacing
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
