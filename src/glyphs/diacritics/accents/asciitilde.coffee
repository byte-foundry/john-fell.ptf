exports.glyphs['asciitilde'] =
	unicode: '~'
	glyphName: 'asciitilde'
	characterName: 'TILDE'
	ot:
		advanceWidth: contours[0].nodes[0].x + 125 * width + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: contours[0].nodes[0].y
	contours:
		0:
			nodes:
				0:
					x: spacingLeft + 125 * width
					y: xHeight / 2
	components:
		0:
			base: 'tilde'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
