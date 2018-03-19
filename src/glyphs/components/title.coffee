exports.glyphs['title'] =
	global: true
	anchors:
		0:
			x: parentAnchors[0].x + serifWidth
			y: parentAnchors[0].y * serifMedian
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			closed: true
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
					# lType: 'line'
					dirOut: 0
					# rTension: 0
					typeIn: 'smooth'
				1:
					x: parentAnchors[0].x + thickness * ( 110 / 85 ) / 2
					y: parentAnchors[0].y - thickness * ( 110 / 85 ) / 2
					# lType: 'line'
					dirOut: Math.PI / 2
					# rTension: 0
					typeIn: 'smooth'
				2:
					x: parentAnchors[0].x
					y: parentAnchors[0].y - thickness * ( 110 / 85 )
					# lType: 'line'
					dirOut: 0
					# rTension: 0
					typeIn: 'smooth'
				3:
					x: parentAnchors[0].x - thickness * ( 110 / 85 ) / 2
					y: parentAnchors[0].y - thickness * ( 110 / 85 ) / 2
					# lType: 'line'
					dirOut: Math.PI / 2
					# rTension: 0
					typeIn: 'smooth'
