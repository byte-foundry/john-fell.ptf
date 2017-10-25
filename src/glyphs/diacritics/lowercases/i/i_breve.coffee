exports.glyphs['i_breve'] =
	unicode: 'ĭ'
	glyphName: 'ibreve'
	characterName: 'LATIN SMALL LETTER I WITH BREVE'
	base: 'dotlessi'
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
