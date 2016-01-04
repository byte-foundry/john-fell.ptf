exports.glyphs['tilde'] =
	glyphName: "asciitilde"
	characterName: "TILDE"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y + 60
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
					x: anchors[0].x - 140 * width - (4)
					y: anchors[0].y
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 15 / 85 ) * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: anchors[0].x - 90 * width - (4)
					y: anchors[0].y + 60 + (15)
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 63 / 85 )
						angle: 72 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[3].expandedTo[0].x - ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x )
					y: anchors[0].y - overshoot / 2 + (15)
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 63 / 85 )
						angle: 72 + 'deg'
						distr: 0.25
					})
				3:
					x: anchors[0].x + 140 * width + (4)
					y: contours[0].nodes[1].expandedTo[1].y - overshoot / 2
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 15 / 85 ) * contrast
						angle: 180 + 'deg'
						distr: 0.75
					})
