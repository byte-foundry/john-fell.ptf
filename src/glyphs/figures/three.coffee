exports.glyphs['three'] =
	unicode: '3'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + 40 * spacing
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 10 * spacing + (10)
		spacingRight: 10 * spacing
	anchors:
		0:
			junction: Utils.pointOnCurve( contours[0].nodes[2].expandedTo[0], contours[0].nodes[3].expandedTo[0], thickness, true, 10 )
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
					x: 37 + (0)
					y: xHeight - 150
					dirOut: 77 + 'deg'
					expand: Object({
						width: thickness * ( 19 / 85 )
						angle: - 16 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * ( 170 / 325 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 69 / 85 )
						angle: - 120 + 'deg'
						distr: 0
					})
				2:
					x: 290 + (63)
					y: xHeight * ( 360 / 500 ) + (22)
					y: contours[0].nodes[3].expandedTo[0].y + ( xHeight - contours[0].nodes[3].expandedTo[0].y ) * 0.65
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: thickness * ( 95 / 85 )
						angle: 180 + 18 + 'deg'
						distr: 0.25
					})
				3:
					x: 115 + (0)
					y: xHeight * ( 170 / 500 ) - (9)
					dirIn: 23 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 17 / 85 )
						angle: 90 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 20
					y: descender * ( 232 / 250 )
					dirOut: 6 + 'deg'
					expand: Object({
						width: thickness * ( 17 / 85 )
						angle: 180 + 100 + 'deg'
						distr: 1
					})
				1:
					x: 305 + (22)
					y: contours[1].nodes[0].expandedTo[1].y + ( contours[0].nodes[3].expandedTo[1].y - contours[1].nodes[0].expandedTo[1].y ) * 0.55
					type: 'smooth'
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 93 / 85 )
						angle: 15 + 'deg'
						distr: 0.25
					})
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
