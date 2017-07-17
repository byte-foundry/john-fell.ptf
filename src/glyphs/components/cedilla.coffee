exports.glyphs['cedilla'] =
	glyphName: 'cedilla'
	characterName: 'CEDILLA'
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
					expand: Object({
						width: ( 25 / 85 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x - Math.max( 48, ( 48 / 85 ) * thickness ) * width
					y: contours[0].nodes[0].expandedTo[0].y - 93
					typeOut: 'line'
					expand: Object({
						width: ( 10 / 85 ) * thickness * contrast
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].point ) + Math.PI / 2
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].expandedTo[0].point ) + ( 12 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: ( 20 / 85 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[0].expandedTo[0].point)
						distr: 0
					})
				1:
					x: ( contours[1].nodes[0].expandedTo[0].x + contours[1].nodes[2].expandedTo[0].x ) * ( 50 / 100 )
					y: contours[0].nodes[1].expandedTo[1].y + 15
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 28 / 85 ) * thickness * contrast
						angle: 180 - 135 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x + 150 * width - (0)
					y: contours[1].nodes[3].y + ( contours[1].nodes[1].y - contours[1].nodes[3].y ) * ( 85 / 140 )
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 85 ) * thickness
						angle: 180 - 175 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[1].expandedTo[0].x
					y: - 220 # TODO
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 22 / 85 ) * thickness * contrast
						angle: 180 + 111 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[1].expandedTo[0].x - 22
					y: Math.max(
						contours[1].nodes[3].expandedTo[0].y + 5,
						contours[1].nodes[3].expandedTo[1].y + 25
					)
					dirIn: Utils.lineAngle( contours[1].nodes[4].point, contours[1].nodes[3].point ) - ( 20 / 180 * Math.PI )
					expand: Object({
						width: ( 11 / 85 ) * thickness * contrast
						angle: Math.PI + contours[1].nodes[0].expand.angle
						distr: 0.75
					})
