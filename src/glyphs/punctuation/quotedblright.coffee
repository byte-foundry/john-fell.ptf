exports.glyphs['quotedblright'] =
	unicode: '”'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
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
			base: '_quoteright'
			parentAnchors:
				0:
					x: 42 + (36)
					y: capHeight + overshoot
		1:
			base: '_quoteright'
			parentAnchors:
				0:
					x: 42 + (15) + Math.max( thickness * ( 80 / 85 ) * 2, 80 )
					y: capHeight + overshoot
