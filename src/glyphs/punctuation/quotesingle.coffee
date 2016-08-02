# TODO: spacing
# TODO: all…
exports.glyphs['quotesingle'] =
	unicode: '\''
	glyphName: 'quotesingle'
	characterName: 'APOSTROPHE'
	ot:
		advanceWidth: width * 92 + 112
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: '_quotesingle'
			parentAnchors:
				0:
					x: 92 + (10)
					y: capHeight
