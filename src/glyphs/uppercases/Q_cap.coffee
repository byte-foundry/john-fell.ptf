exports.glyphs['Q_cap'] =
	unicode: 'Q'
	glyphName: 'Q'
	characterName: 'LATIN CAPITAL LETTER Q'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55 + (22)
		spacingRight: 50 * spacing + 50
	anchors:
		0:
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[0].expandedTo[0], thickness * 2, false, 10 )
			junctionTop: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[1], contours[0].nodes[3].expandedTo[1], thickness, true, 10 )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft
					y: capHeight * ( 375 / 750 )
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 110 / 86 )
						angle: 0
						distr: 0.25
					})
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) / 2 - 5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * contrast * ( 26 / 86 )
						angle: - 100 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 360 + 250 * width # ( 665 + (100) ) * width
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 110 / 86 )
						distr: 0.25
					})
				3:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) / 2 - 15
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 0.5
					expand: Object({
						width: thickness * contrast * ( 26 / 86 )
						angle: - 101 + 180 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + 100 + 250 * width
					y: - 40
					y: contours[1].nodes[1].y + Math.cos( Math.PI * 10 / 180 ) * ( thickness * ( 60 / 85 ) * opticThickness + thickness * ( 25 / 85 ) * opticThickness * contrast ) / 2 + 40
					dirOut: Math.PI * ( - 140 ) / 180
					type: 'smooth'
					expand: Object({
						width: thickness * ( 11 / 85 ) * opticThickness * contrast
						angle: contours[1].nodes[0].dirOut - Math.PI / 2
						distr: 0
					})
				1:
					x: contours[1].nodes[2].expandedTo[1].x + ( contours[1].nodes[0].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.6
					y: - 95 - ( 30 / 90 ) * thickness
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 60 / 85 ) * opticThickness + thickness * ( 25 / 85 ) * opticThickness * contrast
						angle: 80 + 'deg'
						distr: 0.5
					})
				2:
					expandedTo:
						[
							{
								x: anchors[0].junctionBottom.x
								y: anchors[0].junctionBottom.y
								dirIn: Math.min(
									anchors[0].junctionBottom.normal,
									Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[0].point )
								)
							}
							{
								x: anchors[0].junctionTop.x
								y: anchors[0].junctionTop.y
								dirOut: Math.min(
									anchors[0].junctionTop.normal,
									Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[0].point )
								)
							}
						]
