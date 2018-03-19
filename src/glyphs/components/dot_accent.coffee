exports.glyphs['dot_accent'] =
	global: true
	glyphName: 'dotaccent'
	componentLabel: 'Dot'
	characterName: 'DOT ACCENT'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y + 55
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: Math.PI
					typeIn: 'smooth'
				1:
					x: anchors[0].x - Math.max(
						40,
						Math.min(
							160,
							thickness * ( 110 / 85 )
						)
					) / 2
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 110 / 85 )
						)
					) / 2
					dirOut: Math.PI / 2
					typeIn: 'smooth'
				2:
					x: anchors[0].x
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 110 / 85 )
						)
					)
					dirOut: 0
					typeIn: 'smooth'
				3:
					x: anchors[0].x + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 110 / 85 )
						)
					) / 2
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 110 / 85 )
						)
					) / 2
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
