exports.glyphs['i_macron'] =
	unicode: 'ī'
	glyphName: 'imacron'
	characterName: 'LATIN SMALL LETTER I WITH MACRON'
	altImg: 'full-serifs-i.svg'
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
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
