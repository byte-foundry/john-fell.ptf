exports.glyphs['quotedbl'] =
	unicode: '"'
	glyphName: "quotedbl"
	characterName: "QUOTATION MARK"
	ot:
		advanceWidth: width * 212 + 112 * spacing
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
