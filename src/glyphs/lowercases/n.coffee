exports.glyphs['n'] =
	unicode: 'n'
	glyphName: 'n'
	characterName: 'LATIN SMALL LETTER N'
	ot:
		advanceWidth: contours[1].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (0) + serifWidth + 15
		spacingRight: 50 * spacing + 30 + serifWidth + 15
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[3].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: Math.max(0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
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
					x: contours[0].nodes[0].expandedTo[1].x
					# y: xHeight * ( 370 / 500 )
					y: xHeight - 140 + ( thickness - 85 ) / 4 + (25) + 30 / width - 30
					dirOut: if width <= 1.2 then 60 - 60 * width + 60 + 'deg' else 60 - 5 * width + 'deg'
					# angle: - 90 + axis + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 10 / 85 ) + thickness * ( 15 / 85 ) * contrast
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					# angle: Math.max( - thickness - 77 * contrast, Math.max( - 129 * width, - 129 ) ) + 'deg'
					# angle: - 129 + axis + 'deg'
					tensionOut: 1.1
					typeIn: 'smooth'
					expand:
						# width: thickness * ( 80 / 85 ) / 2 + thickness * ( 80 / 85 ) / 2 * contrast
						width: thickness * ( 40 / 85 ) + thickness * ( 40 / 85 ) * contrast
						angle: Math.max( - 129 , - 129 - 10 * contrast * width + 10 ) + 'deg'
						distr: 0
				2:
					x: ( 445 + (64) ) * width
					x: contours[0].nodes[1].expandedTo[1].x + 220 * width + (64)
					y: xHeight - 170 - thickness + 85 + 60 / width - 60
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 180 + 'deg'
				3:
					x: contours[1].nodes[2].x
					y:  Math.max(0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 180 + 'deg'
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight
					typeOut: 'line'
					dirIn: Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}, {x: contours[2].nodes[4].x, y: contours[2].nodes[4].y}) - Math.PI / 12 * spurHeight * -serifArc / 1.5
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y - 10
					typeOut: 'line'
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].expandedTo[1].y - 10
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
				4:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[0].expandedTo[1].x ) / 2
					y: xHeight - serifHeight * serifArc
					dirOut: Math.PI / 12 * spurHeight * Math.abs(serifArc / 1.5)
					typeIn: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[1]
					noneAnchor: contours[1].nodes[3].expandedTo[1]
					opposite: contours[1].nodes[3].expandedTo[0]
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
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
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0]
			transforms: Array(
				[ 'scaleY', -1 ]
				[ 'skewY', 15 * spurHeight + 'deg' ],
				[ 'translateY',( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
			parentParameters:
				serifMedian: serifMedian # - serifMedian / 2 * spurHeight
