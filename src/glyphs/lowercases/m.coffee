exports.glyphs['m'] =
	unicode: 'm'
	glyphName: 'm'
	characterName: 'LATIN SMALL LETTER M'
	ot:
		advanceWidth: contours[2].nodes[3].expandedTo[0].x + spacingRight
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
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
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
					y: xHeight - 135 + ( thickness - 85 ) / 4 + (25)
					dirOut:
						if width <= 1.2
						then 60 - 60 * width + 60 + 'deg'
						else 60 - 5 * width + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 25 / 85 ) * contrast * width
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					# angle: Math.max( - thickness - 77 * contrast, Math.max( - 129 * width, - 129 ) ) + 'deg'
					# angle: - 129 + axis + 'deg'
					tensionOut: 1.2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 72 / 85 )
						angle: - 119 + 'deg'
						distr: 0
				2:
					x: contours[0].nodes[1].expandedTo[1].x + 220 * width + (64)
					y: xHeight - 170 - thickness + 85
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: Math.PI
				3:
					x: contours[1].nodes[2].x
					y: 0
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: Math.PI
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x - ( 5 / 85 ) * thickness
					# y: xHeight * ( 370 / 500 )
					y: contours[1].nodes[0].y
					dirOut: if width <= 1.2 then 60 - 60 * width + 60 + 'deg' else 60 - 5 * width + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 25 / 85 ) * contrast * width
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[2].nodes[3].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					# angle: Math.max( - thickness - 77 * contrast, Math.max( - 129 * width, - 129 ) ) + 'deg'
					# angle: - 129 + axis + 'deg'
					tensionOut: 1.2
					typeIn: 'smooth'
					expand:
						width: thickness * ( 72 / 85 )
						angle: - 119 + 'deg'
						distr: 0
				2:
					x: contours[1].nodes[2].x + 300 * width
					x: contours[1].nodes[2].expandedTo[0].x + 220 * width + (64)
					y: xHeight - 170 - thickness + 85
					dirIn: - 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: Math.PI
				3:
					x: contours[2].nodes[2].x
					y: 0
					dirIn: - 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: Math.PI
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: xHeight
					typeOut: 'line'
					dirIn: Utils.lineAngle({x: contours[3].nodes[0].x, y: contours[3].nodes[0].y}, {x: contours[3].nodes[4].x, y: contours[3].nodes[4].y}) - Math.PI / 12 * spurHeight * -serifArc / 1.5
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
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
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
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ]
				[ 'skewY', 15 * spurHeight + 'deg' ]
				[ 'translateY',( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
			parentParameters:
				serifMedian: serifMedian # - serifMedian / 2 * spurHeight
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[3].expandedTo[1]
					noneAnchor: contours[2].nodes[3].expandedTo[1]
					opposite: contours[2].nodes[3].expandedTo[0]
		6:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[3].expandedTo[0]
					noneAnchor: contours[2].nodes[3].expandedTo[0]
					opposite: contours[2].nodes[3].expandedTo[1]
			transformOrigin: contours[2].nodes[3].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
