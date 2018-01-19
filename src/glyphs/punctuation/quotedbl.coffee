# TODO: spacing
# TODO: only one componenet is displayed…
exports.glyphs['quotedbl'] =
	unicode: '"'
	glyphName: 'quotedbl'
	characterName: 'QUOTATION MARK'
	ot:
		advanceWidth: 200 * width + 125
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (10)
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
		1:
			base: '_quotesingle'
			parentAnchors:
				0:
					x: 212 + (10)
					y: capHeight
