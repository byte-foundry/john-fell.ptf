exports.glyphs['u_cap_circumflex'] =
	unicode: 'Û'
	ot:
		advanceWidth: width * 750 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'U_cap'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'circumflex'
			parentAnchors:
				0:
					x: 360
					y: capHeight + 70