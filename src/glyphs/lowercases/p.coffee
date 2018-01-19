exports.glyphs['p'] =
	unicode: 'p'
	glyphName: 'p'
	characterName: 'LATIN SMALL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + serifWidth + 25
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: descender * ( 220 / 250 ) + Math.max( 0, serifHeight * serifArc )
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				1:
					x: spacingLeft
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[4].x - ( 10 / 85 ) * thickness
					y: xHeight - ( 75 / 500 ) * xHeight * aperture
					dirOut: Math.min( ( 60 / 500 ) * xHeight * aperture, 75 ) / 180 * Math.PI + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.47 / 60)
					tensionOut: 1 + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.1 / 60)
					expand:
						width: Math.min( thickness * ( 35 / 85 ), ( thickness * ( 35 / 85 ) / 500 ) * xHeight )
						angle: Math.PI / 2
						distr: 1
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * 0.4
					y: xHeight + overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: thickness * ( 53 / 85 ) - Math.max(0, (thickness - 120) * 10 / 60) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 20 / 60)
						angle: (180 + 222) / 180 * Math.PI + Math.max(0, (thickness - 120) * 0.08 / 60) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.40 / 60)
						distr: 1
				2:
					x: contours[0].nodes[1].expandedTo[1].x + 100 + 270 * width - (21)
					y: xHeight * ( 250 / 500 )
					dirOut: Math.PI / 2
					tensionOut: 0.9
					typeIn: 'smooth'
					expand:
						width: thickness * ( 97 / 85 )
						angle:( 180 - 164 ) / 180 * Math.PI
						distr: 0.75
				3:
					x: contours[1].nodes[1].x - (15 + 10 * width)
					y: - overshoot / 2
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: thickness * ( 22 / 85 ) + Math.max(0, (thickness - 120) * 4 / 60) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 5 / 60)
						angle: 257 / 180 * Math.PI + Math.max(0, (thickness - 120) * 0.68 / 60) + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.66 / 60)
						distr: 1
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: 50 + ( 80 / 500 ) * xHeight * aperture
					dirIn: Math.max( - 90,( - 73 * aperture ) ) / 180 * Math.PI
					typeOut: 'smooth'
					expand:
						width: Math.min( thickness * ( 79 / 85 ), ( thickness * ( 79 / 85 ) / 500 ) * xHeight )
						angle: Math.PI
						distr: 0
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: xHeight
					typeOut: 'line'
					dirIn: Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}, {x: contours[2].nodes[4].x, y: contours[2].nodes[4].y}) - Math.PI / 12 * spurHeight * -serifArc / 1.5
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y - 10
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].expandedTo[1].y - 10
					typeOut: 'line'
				3:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
				4:
					x: ( contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expandedTo[1].x ) / 2
					y: xHeight - serifHeight * serifArc
					dirOut: Math.PI / 12 * spurHeight * Math.abs(serifArc / 1.5)
					typeIn: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerDescender'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'rightDescender'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
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
				[ 'translateY',( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
			parameters:
				serifCurve: serifCurve + 30
				serifMedian: serifMedian / 2 - 0.12
				serifHeight: serifHeight + 12
