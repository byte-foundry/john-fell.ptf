# TODO: spacing
exports.glyphs['three'] =
	unicode: '3'
	glyphName: 'three'
	characterName: 'DIGIT THREE'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 20
		spacingRight: 50 * spacing + 40
	anchors:
		0:
			junction: Utils.pointOnCurve( contours[0].nodes[2].expandedTo[0], contours[0].nodes[2].expandedTo[0].handleIn, contours[0].nodes[3].expandedTo[0], contours[0].nodes[3].expandedTo[0].handleOut, thickness, true, 10 )
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + (5)
					y: xHeight - 150
					dirOut: 77 + 'deg'
					expand:
						width: thickness * ( 19 / 85 )
						angle: - 16 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 188 / 343 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 69 / 85 )
						angle: - 120 + 'deg'
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 140 - (3),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness * ( 95 / 85 ) + 10
					)
					y: contours[0].nodes[3].expandedTo[0].y + ( xHeight - contours[0].nodes[3].expandedTo[0].y ) * 0.65
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					tensionOut: 1.2
					expand:
						width: thickness * ( 95 / 85 )
						angle: 180 + 18 + 'deg'
						distr: 0.25
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 60
					y: xHeight * ( 170 / 500 ) - (9)
					dirIn: 23 + 'deg'
					typeOut: 'smooth'
					expand:
						width: thickness * ( 17 / 85 )
						angle: 90 + 'deg'
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: descender * ( 232 / 250 )
					dirOut: 6 + 'deg'
					expand:
						width: thickness * ( 17 / 85 )
						angle: 180 + 100 + 'deg'
						distr: 1
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 70 + (37),
						contours[0].nodes[2].expandedTo[1].x
					)
					y: contours[1].nodes[0].expandedTo[1].y + ( contours[0].nodes[3].expandedTo[1].y - contours[1].nodes[0].expandedTo[1].y ) * 0.55
					typeIn: 'smooth'
					dirOut: 90 + 'deg'
					expand:
						width: thickness * ( 93 / 85 )
						angle: 15 + 'deg'
						distr: 0.25
				2:
					expandedTo:
						[
							{
								x: contours[0].nodes[3].expandedTo[1].x
								y: contours[0].nodes[3].expandedTo[0].y
								dirIn: - 8 + 'deg'
							}
							{
								x: anchors[0].junction.x
								y: anchors[0].junction.y
								dirOut: - 8 + 'deg'
							}
						]
