# TODO: thickness
# TODO: a node missing
exports.glyphs['g'] =
	unicode: 'g'
	glyphName: 'g'
	characterName: 'LATIN SMALL LETTER G'
	ot:
		advanceWidth: contours[1].nodes[4].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 35
	anchors:
		0:
			x: contours[0].nodes[2].x
			y: xHeight + diacriticHeight
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[3].expandedTo[1].handleOut, contours[0].nodes[0].expandedTo[1], contours[0].nodes[0].expandedTo[1].handleIn, 50 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: ( contours[0].nodes[3].expandedTo[0].x + contours[0].nodes[1].expandedTo[0].x ) / 2
					y: ( 188 / 500 ) * xHeight
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 85 ) * contrast + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 6 / 60)
						angle: Math.PI / 2
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 200 * width + 160 - (21),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * thickness + 10
					) + Math.max(0, (thickness - 120) * 67 / 60)
					y: contours[0].nodes[3].y
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness - Math.max(0, (thickness - 120) * 7 / 60)
						distr: 0.25
						angle: Math.PI
				2:
					x: contours[0].nodes[0].x
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: thickness * ( 20 / 85 ) * contrast + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 6 / 60)
						angle: - Math.PI / 2
						distr: 0
				3:
					x: spacingLeft + 30 + (21)
					y: ( 350 / 500 ) * xHeight
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness - Math.max(0, (thickness - 120) * 7 / 60)
						distr: 0.25
						angle: 0

		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: - Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 18 / 85 ) * contrast
						angle:( - 75 ) / 180 * Math.PI
						distr: 1
				1:
					x: spacingLeft + 10 + (12)
					y: ( 105 / 500 ) * xHeight + (6) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 16 / 60)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 56 / 85 ) + Math.max(0, (thickness - 120) * 7 / 60) + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 9 / 60)
						angle: 27 / 180 * Math.PI + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.12 / 60)
						distr: 0.25
				2:
					x: contours[1].nodes[6].expandedTo[1].x + ( contours[1].nodes[4].expandedTo[1].x - contours[1].nodes[6].expandedTo[1].x ) * ( 134 / 440 )
					y: 0 + (42)
					tensionOut: 0.5
					dirIn: 0
					typeOut: 'smooth'
					expand:
						width: thickness
						angle:( 87 ) / 180 * Math.PI
						distr: 0.5
				3:
					x: contours[1].nodes[4].expandedTo[1].x - ( contours[1].nodes[4].expandedTo[1].x - contours[1].nodes[6].expandedTo[1].x ) * ( 190 / 440 ) + Math.max(0, (thickness - 120) * 25 / 60)
					y: 0 + (42)
					dirOut: Utils.lineAngle({x: contours[1].nodes[2].x, y: contours[1].nodes[2].y},{x:  contours[1].nodes[3].x, y:  contours[1].nodes[3].y} )
					tensionOut: 1.2
					typeIn: 'smooth'
					expand:
						width: thickness
						angle:( 84 ) / 180 * Math.PI
						distr: 0.5
				4:
					x: Math.max(
						contours[1].nodes[6].expandedTo[1].x + 200 * width + 240 - (18),
						contours[1].nodes[6].expandedTo[0].x + 0.25 * thickness * ( 73 / 85 ) + 10
					) + Math.max(0, (thickness - 120) * 52 / 60)
					y: (( 230 / 250 ) * descender) + ( (contours[1].nodes[3].y + Math.sin( 84 / 180 * Math.PI ) * thickness / 2 ) - (( 230 / 250 ) * descender) ) * 0.5 - Math.max(0, (thickness - 120) * 6 / 60)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 73 / 85 ) - Math.max(0, (thickness - 120) * 5 / 60) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 46.5 / 60)
						angle: 16 / 180 * Math.PI + Math.max(0, (thickness - 120) * 0.15 / 60) + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.26 / 60)
						distr: 0.75
				5:
					x: contours[1].nodes[4].expandedTo[1].x - ( contours[1].nodes[4].expandedTo[1].x - contours[1].nodes[6].expandedTo[1].x ) * 0.5
					y: ( 230 / 250 ) * descender
					dirOut: 0
					typeIn: 'smooth'
					tensionIn: 1 + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.2 / 60)
					tensionOut: 1 + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.2 / 60)
					expand:
						width: thickness * ( 20 / 85 ) * contrast + Math.max(0, (thickness - 120) * 14 / 60)
						angle: (180 + 76) / 180 * Math.PI + Math.max(0, (thickness - 120) * 0.6 / 60)
						distr: 1
				6:
					x: spacingLeft + (18)
					y: ( 95 / 250 ) * descender + (5) - Math.max(0, (thickness - 120) * 27 / 60) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 11 / 60)
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 73 / 85 ) - Math.max(0, (thickness - 120) * 62.6 / 60) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 34.5 / 60)
						angle: (180 + 16) / 180 * Math.PI - Math.max(0, (thickness - 120) * 0.14 / 60) + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.1 / 60)
						distr: 0.75
				7:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y + thickness * ( 10 / 85 )
					dirIn:( - 168 ) / 180 * Math.PI
					typeOut: 'smooth'
					expand:
						width: thickness * ( 23 / 85 ) * contrast + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 6 / 60)
						angle: Math.PI
						distr: 0.25
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[1].expandedTo[1].x + 36 / 85 * thickness
					y: contours[2].nodes[1].expandedTo[1].y * 51 / 88 + contours[2].nodes[1].expandedTo[0].y * 37 / 88
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: 0
						angle:( - 172 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[2].nodes[2].x
					y: contours[2].nodes[2].y
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: thickness * ( 90 / 85 )
						angle: - 78 / 180 * Math.PI
						distr: 0
				2:
					x: contours[2].nodes[3].x + 101
					y: contours[2].nodes[3].y + 80
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: thickness * ( 73 / 85 )
						angle: - 133 / 180 * Math.PI
						distr: 0
				3:
					x: contours[0].nodes[1].expandedTo[0].x - thickness * ( 50 / 85 )
					y: Math.min( contours[0].nodes[1].expandedTo[0].y + thickness * ( 100 / 85 ), contours[0].nodes[1].expandedTo[0].y + 100 )
					dirIn: Math.max( 64 ,( 100 - (43/85) * thickness * (500/xHeight) ) ) / 180 * Math.PI
					typeOut: 'smooth'
					expand:
						width: thickness * ( 23 / 85 ) * contrast
						angle:( - 77 ) / 180 * Math.PI
						distr: 0
