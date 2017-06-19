exports.glyphs['p'] =
	unicode: 'p'
	glyphName: 'p'
	characterName: 'LATIN SMALL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + (16) + serifWidth + 15
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
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				1:
					x: spacingLeft
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
					x: contours[0].nodes[1].expandedTo[1].x - ( 10 / 85 ) * thickness
					y: xHeight - ( 75 / 500 ) * xHeight * aperture
					dirOut: Math.min( ( 60 / 500 ) * xHeight * aperture, 75 ) + 'deg'
					expand:
						width: Math.min( thickness * ( 35 / 85 ), ( thickness * ( 35 / 85 ) / 500 ) * xHeight )
						angle: 90 + 'deg'
						distr: 1
				1:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) * 0.4
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 53 / 85 )
						angle: 180 + 222 + 'deg'
						distr: 1
				2:
					x: contours[0].nodes[1].expandedTo[1].x + 100 + 270 * width - (21)
					y: xHeight * ( 250 / 500 )
					dirOut: 90 + 'deg'
					tensionOut: 0.9
					typeIn: 'smooth'
					expand:
						width: thickness * ( 97 / 85 )
						angle: 180 - 164 + 'deg'
						distr: 0.75
				3:
					x: contours[1].nodes[1].x
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * contrast * ( 22 / 85 )
						angle: 180 + 112 + 'deg'
						distr: 1
				4:
					#######################################################
					#######################################################
					#######################################################
					# TODO: fix aperture / thickness / angle
					#######################################################
					#######################################################
					#######################################################
					x: contours[1].nodes[0].x
					# y: xHeight * ( 120 / 500 )
					y: 40 + ( 80 / 500 ) * xHeight * aperture
					dirIn: Math.max( - 90, - 65 * aperture ) + 'deg'
					typeOut: 'smooth'
					expand:
						width: Math.min( thickness * ( 54 / 85 ) * contrast, ( thickness * ( 35 / 85 ) * contrast / 500 ) * xHeight )
						angle: 180 + 43 + 'deg'
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
