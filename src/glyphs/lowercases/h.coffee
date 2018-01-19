exports.glyphs['h'] =
	unicode: 'h'
	glyphName: 'h'
	characterName: 'LATIN SMALL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + serifWidth + 40
		spacingRight: 50 * spacing + serifWidth + 30
	anchors:
		0:
			x: 120 + ( 21 )
			y: ascenderHeight - ( 160 / 500 ) * xHeight
		1:
			x: ( 445 + 64 ) * width
			# y: xHeight * ( 340 / 500 ) - ( thickness + 85 ) / 4
			y: xHeight - 160 - ( thickness + 85 ) / 4
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
					x: spacingLeft
					y: Math.max(0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					expand:
						width: thickness
						distr: 0.25
						angle: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					# y: xHeight * ( 370 / 500 )
					y: xHeight - 140 + ( thickness - 85 ) / 4 + (25)
					dirOut: if width <= 1.2 then (60 - 60 * width + 60) / 180 * Math.PI else (60 - 5 * width ) / 180 * Math.PI
					# angle:( - 90 + axis ) / 180 * Math.PI
					typeIn: 'smooth'
					expand:
						width: thickness * ( 25 / 85 ) * contrast * width + Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 14 / 60)
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.6 - Math.max(0, (thickness - 120) * 11 / 60)
					y: xHeight + overshoot
					dirOut: 0
					# angle: Math.max( - thickness - 77 * contrast,( Math.max( - 129 * width, - 129 ) ) ) / 180 * Math.PI
					# angle:( - 129 + axis ) / 180 * Math.PI
					tensionOut: 1.1
					typeIn: 'smooth'
					expand:
						width: thickness * ( 77 / 85 ) - Math.max(0, (thickness - 120) * 31 / 60) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 28 / 60)
						angle: - 129 / 180 * Math.PI - Math.max(0, (thickness - 120) * 0.1 / 60) - Math.max(0, ((1 - contrast) * 1.17) * (thickness - 120) * 0.31 / 60)
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 100 + 225 * width - (64) - Math.max(0, (thickness - 100) * 54 / 80)
					y: xHeight - 170 - thickness + 85 + Math.max(0, (thickness - 120) * 63 / 60)
					dirIn: - Math.PI / 2
					typeOut: 'line'
					tensionIn: 1 + Math.max(0, (thickness - 120) * 0.2 / 60)
					expand:
						width: thickness + Math.max(0, (thickness - 120) * 3 / 60)
						angle: Math.PI + Math.max(0, (thickness - 120) * 0.19 / 60)
						distr: 0.75
				3:
					x: contours[1].nodes[2].x
					y: Math.max(0, serifHeight * serifArc )
					dirOut: - Math.PI / 2
					typeOut: 'line'
					expand:
						width: thickness
						angle: Math.PI
						distr: 0.75
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: ascenderHeight
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
					y: ascenderHeight - serifHeight * serifArc
					dirOut: Math.PI / 12 * spurHeight * Math.abs(serifArc / 1.5)
					typeIn: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class:'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class:'innerLowerLeftStump'
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
			id: 'bottomleft2'
			class:'innerLowerLeftStump'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[1]
					noneAnchor: contours[1].nodes[3].expandedTo[1]
					opposite: contours[1].nodes[3].expandedTo[0]
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			class:'lowerRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[0]
					noneAnchor: contours[1].nodes[3].expandedTo[0]
					opposite: contours[1].nodes[3].expandedTo[1]
			transformOrigin: contours[1].nodes[3].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		4:
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
				[ 'skewY',( 15 * spurHeight ) / 180 * Math.PI ],
				[ 'translateY',( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
			parameters:
				serifCurve: serifCurve + 30
				serifMedian: serifMedian / 2 - 0.12
				serifHeight: serifHeight + 12
