exports.glyphs['d'] =
	unicode: 'd'
	glyphName: 'd'
	characterName: 'LATIN SMALL LETTER D'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 15 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + 50
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x + 200 * width + 255 - (9),
						contours[1].nodes[2].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: 0 + Math.max( 0, serifHeight * serifArc ) + ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.75
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.75
						angle: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 5 / 85 )
					y: 80
					dirOut: - 125 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 30 / 85 )
						angle: 90 + 'deg'
						distr: 0.25
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.57 + (2)
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 50 / 85 )
						angle: 45 + 'deg'
						distr: 0
				2:
					x: spacingLeft + (23)
					y: xHeight * ( 257 / 500 )
					dirOut: 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 91 / 86 )
						angle: 15 + 'deg'
						distr: 0.25
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.65 - (4)
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					tensionIn: 1.1
					typeOut: 'smooth'
					expand:
						width: thickness * ( 27 / 86 )
						angle: - 68 + 'deg'
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 5 / 85 )
					y: xHeight - xHeight * ( ( 500 - 385 ) / 500 )
					y: xHeight - xHeight * ( 115 / 500 )
					dirIn: 116 + 'deg'
					dirIn: Math.max( 146 - ( 30 / 500 ) * xHeight, 90 ) + 'deg'
					# dirOut: 90 + 'deg'
					tensionIn: 0.9
					typeOut: 'smooth'
					expand:
						width: Math.min( thickness * ( 54 / 86 ), ( thickness * ( 54 / 86 ) / 500 ) * xHeight )
						angle: 180 + 34 + 'deg'
						distr: 1
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: 0
					typeOut: 'line'
					dirIn: Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}, {x: contours[2].nodes[4].x, y: contours[2].nodes[4].y}) - Math.PI / 12 * spurHeight * -serifArc / 1.5
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y + 10
					typeOut: 'line'
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].expandedTo[0].y + 10
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					typeOut: 'line'
				4:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[0].expandedTo[1].x ) / 2
					y: - serifHeight * serifArc
					dirOut: Math.PI / 12 * spurHeight * Math.abs(serifArc / 1.5)
					typeIn: 'line'
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: ascenderHeight
					typeOut: 'line'
					dirIn: Utils.lineAngle({x: contours[3].nodes[0].x, y: contours[3].nodes[0].y}, {x: contours[3].nodes[4].x, y: contours[3].nodes[4].y}) - Math.PI / 12 * spurHeight * -serifArc / 1.5
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y - 10
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[1].y - 10
					typeOut: 'line'
				3:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
				4:
					x: ( contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expandedTo[1].x ) / 2
					y: ascenderHeight - serifHeight * serifArc
					dirOut: Math.PI / 12 * spurHeight * Math.abs(serifArc / 1.5)
					typeIn: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'skewY', 15 * spurHeight + 'deg' ]
				[ 'translateY',-( Math.tan( (15 * spurHeight) / 180 * Math.PI ) ) ]
			)
		1:
			base: ['serif-vertical', 'none']
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ]
				[ 'skewY', 15 * spurHeight + 'deg' ]
				[ 'translateY',( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.75 ) ) ]
			)
			parentParameters:
				serifMedian: serifMedian # - serifMedian / 2 * spurHeight
