exports.glyphs['breve'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y + 70
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
					x: anchors[0].x - 110 * width - ( 20 / 85 ) * thickness
					y: anchors[0].y + 115
					dirOut: - 90 + ( 5 / 85 ) * thickness + 'deg'
					expand: Object({
						width: thickness * ( 18 / 85 )
						angle: 8 + 'deg'
						distr: 0.25
					})
				1:
					x: anchors[0].x
					y: anchors[0].y + 45 - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 60 / 85 )
						angle: 90 + 'deg'
						distr: 0.75
					})
				2:
					x: anchors[0].x + ( anchors[0].x - contours[0].nodes[0].expandedTo[1].x )
					y: contours[0].nodes[0].y
					dirIn: - 90 - ( 5 / 85 ) * thickness + 'deg'
					expand: Object({
						width: thickness * ( 18 / 85 )
						angle: 172 + 'deg'
						distr: 1
					})
