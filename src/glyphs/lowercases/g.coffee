# TODO: thickness
# TODO: a node missing
exports.glyphs['g'] =
	unicode: 'g'
	glyphName: 'g'
	characterName: 'LATIN SMALL LETTER G'
	ot:
		advanceWidth: contours[1].nodes[4].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 45 * spacing
		spacingRight: 35 * spacing
	anchors:
		0:
			x: contours[0].nodes[2].x
			y: xHeight + diacriticHeight
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[0].expandedTo[1], 50 )
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
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 200 * width + 160 - (21),
						contours[0].nodes[3].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: contours[0].nodes[3].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				3:
					x: spacingLeft + 30 + (21)
					y: ( 350 / 500 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						distr: 0.25
					})

		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					# x: anchors[0].junctionBottom.x
					# y: anchors[0].junctionBottom.y
					dirOut: - 180 + 'deg'
					# dirOut: Utils.lineAngle( contours[1].nodes[2].point, contours[1].nodes[3].point ) - Math.PI / 2 * 90 * 4
					type: 'smooth'
					expand: Object({
						width: thickness * ( 18 / 85 )
						angle: - 75 + 'deg'
						distr: 1
					})
				1:
					x: spacingLeft + 10 + (12)
					y: ( 105 / 500 ) * xHeight + (6)
					# dirOut: contours[1].nodes[2].dirOut + Math.PI / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 56 / 85 )
						angle: 27 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[1].nodes[6].expandedTo[1].x + ( contours[1].nodes[4].expandedTo[1].x - contours[1].nodes[6].expandedTo[1].x ) * ( 134 / 440 )
					y: 0 + (42)
					tensionOut: 0.5
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 87 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[1].nodes[4].expandedTo[1].x - ( contours[1].nodes[4].expandedTo[1].x - contours[1].nodes[6].expandedTo[1].x ) * ( 190 / 440 )
					y: 0 + (42)
					dirOut: Utils.lineAngle( contours[1].nodes[2].point, contours[1].nodes[3].point )
					tensionOut: 1.2
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 84 + 'deg'
						distr: 0.5
					})
				4:
					x: Math.max(
						contours[1].nodes[6].expandedTo[1].x + 200 * width + 240 - (18),
						contours[1].nodes[6].expandedTo[0].x + 0.25 * thickness * ( 73 / 85 ) + 10
					)
					y: (( 230 / 250 ) * descender) + ( (contours[1].nodes[3].y + Math.sin( 84 / 180 * Math.PI ) * thickness / 2 ) - (( 230 / 250 ) * descender) ) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 73 / 85 )
						angle: 16 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[1].nodes[4].expandedTo[1].x - ( contours[1].nodes[4].expandedTo[1].x - contours[1].nodes[6].expandedTo[1].x ) * 0.5
					y: ( 230 / 250 ) * descender
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: 180 + 76 + 'deg'
						distr: 1
					})
				6:
					x: spacingLeft + (18)
					y: ( 95 / 250 ) * descender + (5)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 73 / 85 )
						angle: 180 + 16 + 'deg'
						distr: 0.75
					})
				7:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y + thickness * ( 10 / 85 )
					dirIn: - 168 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 23 / 85 )
						angle: 180 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + 150
					y: contours[2].nodes[1].y - 55
					dirOut: 90 + 'deg'
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: - 172 + 'deg'
						distr: 0
					})
				1:
					x: contours[2].nodes[2].expandedTo[1].x + ( contours[2].nodes[0].expandedTo[0].x - contours[2].nodes[2].expandedTo[1].x ) * (575-460)/(575-405)
					y: contours[0].nodes[2].y - 15
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 50 / 85 )
						angle: - 135 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x - thickness * ( 20 / 85 )
					y: Math.min( contours[0].nodes[1].expandedTo[0].y + thickness * ( 65 / 85 ), contours[0].nodes[1].expandedTo[0].y + 65 )
					dirIn: Math.max( 64 , 100 - (43/85) * thickness * (500/xHeight) ) + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 23 / 85 )
						angle: - 77 + 'deg'
						distr: 0
					})
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					dirOut: 90 + 'deg'
					typeIn: 'line'
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[1].x - contours[2].nodes[0].expandedTo[0].x ) * ( 35/ 75 )
					y: contours[2].nodes[0].expandedTo[0].y - thickness * ( 40 / 85 )
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					dirIn: -90 + 'deg'
