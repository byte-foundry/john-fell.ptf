exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + serifWidth + 15
		spacingRight: 50 * spacing + serifWidth + 10 + 15
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (21)
					y: xHeight - Math.max(0, serifHeight * serifArc )
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					# y: xHeight * ( 160 / 500 )
					y: xHeight * ( 30 / 500 ) * width + 130
					dirOut: Math.PI / 2
					# type: 'smooth'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				2:
					x: contours[0].nodes[1].x + ( contours[0].nodes[3].x - contours[0].nodes[1].x ) * 0.4
					y: - overshoot
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: thickness * ( 72 / 86 )
						angle:( 56 ) / 180 * Math.PI
						distr: 0
				3:
					x: contours[1].nodes[0].expandedTo[0].x + 6
					# y: xHeight * ( ( 130 + 10 ) / 500 )
					y: xHeight * ( 30 / 500 ) + 110
					dirIn: Math.max( - 110 ,( Math.min( - 95 , - ( 120 / 500 ) * xHeight ) ) ) / 180 * Math.PI
					# dirIn:( - 115 - ( 5 / 500 ) * xHeight ) / 180 * Math.PI
					typeOut: 'smooth'
					expand:
						width: ( thickness * ( 15 / 86 ) + ( ( 10 / 500 ) * xHeight / 85 ) * thickness ) * contrast
						angle: Math.PI / 2
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 305 * width - (21)
					y: xHeight - Math.max(0, serifHeight * serifArc )
					dirOut: Math.PI / 2
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.75
						angle: 0
				1:
					x: contours[1].nodes[0].x
					y: Math.max( 0, serifHeight * serifArc ) + ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut: Math.PI / 2
					expand:
						width: thickness
						distr: 0.75
						angle: 0
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: 0
					typeOut: 'line'
					dirIn: Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}, {x: contours[2].nodes[4].x, y: contours[2].nodes[4].y}) - Math.PI / 12 * spurHeight * -serifArc / 1.5
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y + 10
					typeOut: 'line'
				2:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].expandedTo[0].y + 10
					typeOut: 'line'
				3:
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
				4:
					x: ( contours[1].nodes[1].expandedTo[0].x + contours[1].nodes[1].expandedTo[1].x ) / 2
					y: - serifHeight * serifArc
					dirOut: Math.PI / 12 * spurHeight * Math.abs(serifArc / 1.5)
					typeIn: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['none', 'serif-vertical']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'spur'
			class: 'bottomRightSpur'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'skewY',( 15 * spurHeight ) / 180 * Math.PI ]
				[ 'translateY',-( Math.tan( (15 * spurHeight) / 180 * Math.PI ) ) ]
			)
			parameters:
				serifWidth: serifWidth + 10
				serifCurve: serifCurve + 35
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		4:
			base: ['none', 'serif-vertical']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
				[ 'scaleX', -1 ]
			)
