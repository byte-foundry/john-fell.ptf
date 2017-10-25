exports.glyphs['a_breve'] =
	unicode: 'ă'
	glyphName: 'abreve'
	characterName: 'LATIN SMALL LETTER A WITH BREVE'
	base: 'a'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'breve'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
