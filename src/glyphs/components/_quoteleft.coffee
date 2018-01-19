exports.glyphs['_quoteleft'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y - 120
					dirOut: Math.PI
					typeIn: 'smooth'
				1:
					x: contours[0].nodes[0].x - thickness * ( 32 / 85 )
					y: contours[0].nodes[0].y - thickness * ( 80 / 85 ) / 2
					dirOut: Math.PI / 2
					typeIn: 'smooth'
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y - thickness * ( 80 / 85 )
					dirOut: 0
					typeIn: 'smooth'
				3:
					x: contours[0].nodes[0].x + thickness * ( 80 / 85 ) / 2
					y: contours[0].nodes[0].y - thickness * ( 80 / 85 ) / 2
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					dirOut: 0
					# type: 'smooth'
					expand:
						width: 32
						angle: - Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[3].y + ( contours[0].nodes[0].y - contours[0].nodes[3].y ) / 2 + (5)
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 30 / 85 ) * thickness
						angle:( 180 + 32 ) / 180 * Math.PI
						distr: .3
				2:
					x: anchors[0].x + 30
					y: anchors[0].y
					dirIn: Math.max(Math.min(40 - thickness + 80,( 40) , 15) ) / 180 * Math.PI
					typeOut: 'smooth'
					expand:
						width: 15
						angle: 130 / 180 * Math.PI
						distr: 1
