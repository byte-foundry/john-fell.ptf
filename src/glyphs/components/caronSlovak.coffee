exports.glyphs['caronSlovak'] =
	glyphName: 'caron slovak'
	characterName: 'CARON SLOVAK'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					typeOut: 'line'
					expand:
						width: thickness * ( 15 / 85 )
						angle: - 11 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].x + 10 * width + (7)
					y: anchors[0].y + 110 + (0)
					typeOut: 'line'
					expand:
						width: ( 45 / 85 ) * thickness
						angle: - 12 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: contours[0].nodes[1].y + 105
						on: [
							{
								x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2,
								y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[0].expandedTo[1].y - contours[0].nodes[0].expandedTo[0].y ) / 2,
							},
							{
								x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) / 2,
								y: contours[0].nodes[1].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[1].expandedTo[0].y ) / 2,
							}
						]
					})
					y: contours[0].nodes[1].y + 105
					expand:
						width: Math.max( 4, thickness * ( 40 / 85 )  )
						angle: - 18 + 'deg'
						distr: 0.4
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					tensionOut: 0.7
					dirOut: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[0],
						contours[0].nodes[1].expandedTo[0]
					) + 0.01
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirIn: 180 + 'deg'
					tensionIn: 1.3
					typeOut: 'smooth'
				2:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirOut: - 90 + 'deg'
					tensionIn: 1.2
					typeIn: 'smooth'
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[1],
						contours[0].nodes[1].expandedTo[1]
					) - 0.01
					typeOut: 'line'
	transformOrigin: Array( 0, ascenderHeight )
	transforms: Array(
		['translateY', - ( contours[1].nodes[0].expandedTo[0].y - contours[0].nodes[0].expandedTo[1].y ) ]
	)
