# Todo: spacing
exports.glyphs['questiondown'] =
	unicode: '¿'
	glyphName: 'questiondown'
	characterName: 'INVERTED QUESTION MARK'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI],
		['translateY', - xHeight],
		['scaleY', -1],
		['translateX', - (contours[0].nodes[3].expandedTo[1].x + spacingRight) ]
		['scaleX', -1],
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 110 + (7)
					y: ( ( 125 + thickness ) / 750 ) * capHeight
					typeOut: 'line'
					expand:
						width: Math.max( 4, thickness * ( 15 / 85 ) )
						angle: Math.PI
						distr: 0.5
				1:
					x: 125
					y: ( 360 / 750 ) * capHeight
					dirOut: 0
					tensionOut: 1.5
					expand:
						width: Math.min( 85, thickness * ( 90 / 85 ) )
						angle:( 109 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[1].x + ( contours[0].nodes[3].x - contours[0].nodes[1].x ) * 0.85
					y: contours[0].nodes[1].y + ( contours[0].nodes[3].y - contours[0].nodes[1].y ) * 0.55
					typeIn: 'smooth'
					dirOut: Utils.lineAngle({x: contours[0].nodes[3].x, y: contours[0].nodes[3].y},{x:  contours[0].nodes[1].x, y:  contours[0].nodes[1].y} ) + Math.PI / Math.max( 20, ( 12 / 85 ) * thickness )
					expand:
						width: thickness * ( 45 / 85 )
						angle:( 115 ) / 180 * Math.PI
						distr: 0.5
				3:
					x: 295 + (7)
					y: ( 550 / 750 ) * capHeight
					typeIn: 'smooth'
					dirOut: Math.PI / 2
					expand:
						width: thickness * ( 27 / 85 )
						angle:( - 158 ) / 180 * Math.PI
						distr: 0.5
				4:
					x: 145
					y: ( 760 / 750 ) * capHeight
					typeOut: 'smooth'
					dirIn: 0
					expand:
						width: thickness * ( 95 / 85 )
						angle:( - 71 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirOut: Math.PI
				1:
					x: contours[0].nodes[4].expandedTo[0].x - ( 80 / 85 ) * thickness
					y: contours[0].nodes[4].expandedTo[0].y - ( 63 / 85 ) * thickness
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
				2:
					x: contours[0].nodes[4].expandedTo[1].x - ( 65 / 85 ) * thickness
					y: contours[0].nodes[4].expandedTo[1].y - ( 15 / 85 ) * thickness
				3:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: 125
					y: -5
