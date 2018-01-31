exports.glyphs['d'] =
	unicode: 'd'
	glyphName: 'd'
	characterName: 'LATIN SMALL LETTER D'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 15 + serifWidth + 20
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
						contours[1].nodes[2].expandedTo[0].x + 200 * width + 234 + Math.max(0, (thickness - 120) * 52 / 60),
						contours[1].nodes[2].expandedTo[1].x + 0.75 * thickness + 10 + Math.max(0, (thickness - 120) * 52 / 60)
					)
					y: 0 + ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.75
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut: Math.PI / 2
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
					dirOut:( - 125 ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 30 / 85 ) * contrast
						angle: Math.PI / 2
						distr: 0.25
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.57 + (2)
					y: - overshoot / 2
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: thickness * ( 50 / 85 )
						angle: 45 / 180 * Math.PI
						distr: 0
				2:
					x: spacingLeft + contours[1].nodes[2].expand.width * Math.cos(contours[1].nodes[2].expand.angle) * 0.25
					y: xHeight * ( 257 / 500 )
					dirOut: Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 91 / 86 )
						angle: 15 / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.65 - (4)
					y: xHeight + overshoot
					dirIn: 0
					tensionIn: 1.1
					typeOut: 'smooth'
					expand:
						width: thickness * ( 27 / 86 )+ Math.max(0, (thickness - 120) * 16 / 60)
						angle: - 68 / 180 * Math.PI + Math.max(0, (thickness - 120) * 0.4 / 60)
						distr: 0
				4:
					x: contours[0].nodes[0].expandedTo[0].x
					y: xHeight - xHeight * ( 125 / 500 )
					dirIn: Math.max( 146 - ( 30 / 500 ) * xHeight,( 90 ) ) / 180 * Math.PI
					dirIn:( 107 ) / 180 * Math.PI
					# dirOut: Math.PI / 2
					tensionIn: 0.9
					typeOut: 'smooth'
					expand:
						width: Math.min( thickness * ( 54 / 86 ), ( thickness * ( 54 / 86 ) / 500 ) * xHeight )
						width: thickness * ( 81 / 86 ) * Math.min(contrast, 1)
						angle:( 180 + 13 ) / 180 * Math.PI
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
			id: 'bottomRightSpur'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'skewY',( 15 * spurHeight ) / 180 * Math.PI ]
				[ 'translateY',-( Math.tan( (15 * spurHeight) / 180 * Math.PI ) ) ]
			)
			parameters:
				serifWidth: serifWidth + 20
				serifCurve: serifCurve + 35
		1:
			base: ['serif-vertical', 'none']
			id: 'attaque'
			class: 'attaqueTopLeft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ]
				[ 'skewY',( 15 * spurHeight ) / 180 * Math.PI ]
				[ 'translateY',( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.75 ) ) ]
			)
			parameters:
				serifCurve: serifCurve + 30
				serifMedian: serifMedian / 2 - 0.12
				serifHeight: serifHeight + 12
