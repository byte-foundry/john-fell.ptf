exports.glyphs['O_cap_slash'] =
	unicode: 'Ø'
	glyphName: 'Oslash'
	characterName: 'LATIN CAPITAL LETTER O WITH STROKE'
	base: 'O_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'stroke'
			copy: true
			parentAnchors:
				0:
					left: parentAnchors[0].left
					right: parentAnchors[0].right
			parameters:
				xHeight: capHeight
				thickness: thickness * opticThickness * 1.5
