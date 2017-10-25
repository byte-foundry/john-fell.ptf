exports.glyphs['_quotesingle'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.3
					expand:
						width: thickness * ( 20 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: anchors[0].y - 45
					typeIn: 'smooth'
					typeOut: 'line'
					expand:
						width: thickness * ( 70 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
				2:
					x: contours[0].nodes[0].x
					y: anchors[0].y - 190
					typeIn: 'line'
					expand:
						width: thickness * ( 10 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
