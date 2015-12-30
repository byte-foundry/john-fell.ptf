exports.glyphs['u_dieresis'] =
	unicode: 'ü'
	base: 'u'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - 60 - ( 15 / 85 ) * thickness
					y: anchors[0].y
		1:
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x + 60 + ( 15 / 85 ) * thickness
					y: anchors[0].y
