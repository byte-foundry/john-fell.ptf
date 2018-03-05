exports.glyphs['grave'] =
	glyphName: 'grave'
	characterName: 'GRAVE ACCENT'
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
					x: anchors[0].x + (5)
					y: anchors[0].y + (5)
					typeOut: 'line'
					expand:
						width: thickness * ( 15 / 85 )
						angle:( 45 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: contours[0].nodes[0].x - 140 + (5)
					y: contours[0].nodes[0].y + 115 + (12)
					typeIn: 'line'
					expand:
						width: thickness * ( 55 / 85 )
						angle:( 45 ) / 180 * Math.PI
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: contours[0].nodes[1].y + 75
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
					y: contours[0].nodes[1].y + 75
					expand:
						width: Math.max( 4, thickness * ( 60 / 85 )  )
						angle:( 45 ) / 180 * Math.PI
						distr: 0.5
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeIn: 'line'
					dirOut: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[0],
						contours[0].nodes[1].expandedTo[0]
					) + 0.01
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirIn: - Math.PI / 2
					tensionIn: 1.2
					tensionOut: 0.9
					typeOut: 'smooth'
				2:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirOut: 0
					tensionIn: 0.9
					tensionOut: 1.2
					typeIn: 'smooth'
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[1],
						contours[0].nodes[1].expandedTo[1]
					) - 0.01
					typeOut: 'line'
