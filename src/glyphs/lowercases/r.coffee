exports.glyphs['r'] =
	unicode: 'r'
	glyphName: 'r'
	characterName: 'LATIN SMALL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (16) + serifWidth + 15
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
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
					x: contours[0].nodes[1].expandedTo[1].x - thickness * ( 5 / 85 )
					y: ( ( 375 + 50 ) / 500 ) * xHeight - 50
					dirOut: if width <= 1.2 then 74 - 74 * width + 74 + 'deg' else 79 - 15 * width + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 45 / 85 ) * contrast
						angle: - 90 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 145 * width
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 56 / 85 )
						angle: - 135 + 'deg'
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 240 * width - (75)
					y: contours[1].nodes[1].expandedTo[1].y - 35 + Math.min( - 20 * aperture + 20, - 125 * aperture + 125 )
					dirIn: 110 - 20 * aperture + 'deg'
					typeOut: 'smooth'
					expand:
						width: thickness * ( 100 / 85 )
						angle: 180 + 'deg'
						distr: 0.75
		2:
			#######################################################
			#######################################################
			#######################################################
			# TODO: make it skeleton only with serifBall param
			#######################################################
			#######################################################
			#######################################################
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					dirOut: contours[1].nodes[2].dirIn
					typeIn: 'line'
					# type: 'smooth'
				1:
					x: contours[1].nodes[2].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[2].expandedTo[1].x ) / 2
					# x: 365
					y: contours[1].nodes[2].expandedTo[0].y - thickness * ( 50 / 85 )
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					# type: 'smooth'
				2:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
					dirIn: contours[1].nodes[2].dirIn
					# type: 'smooth'
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
