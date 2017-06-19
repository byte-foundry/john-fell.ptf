exports.glyphs['ring'] =
	glyphName: 'ring'
	characterName: 'RING ABOVE'
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
			closed: true
			nodes:
				0:
					x: anchors[0].x - ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) / 2 - ( ( 15 / 85 ) * thickness * 0.25 )
					y: contours[0].nodes[3].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) / 2
					dirOut: 90 + 'deg'
					tensionIn: 0.9
					expand:
						width: ( 25 / 85 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
				1:
					x: anchors[0].x
					y: anchors[0].y + 180 + overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 20 / 85 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: anchors[0].x + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[3].expandedTo[1].y ) / 2 + ( ( 15 / 85 ) * thickness * 0.25 )
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
					tensionOut: 0.9
					expand:
						width: ( 25 / 85 ) * thickness
						angle: 180 + 'deg'
						distr: 0.75
				3:
					x: contours[0].nodes[1].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					tensionIn: 0.9
					tensionOut: 0.9
					typeIn: 'smooth'
					expand:
						width: ( 20 / 85 ) * thickness
						angle: 90 + 'deg'
						distr: 0
