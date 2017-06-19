exports.glyphs['j'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (6) + serifWidth + 15
		spacingRight: 50 * spacing + 90
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
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
					y: ( 50 / 85 ) * thickness
					# y: 50
					dirOut: 90 + 'deg'
					# typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				2:
					x: contours[0].nodes[1].expandedTo[0].x - 35
					y: - 130
					# type: 'smooth'
					dirIn: Math.PI / 6 # 33 + 'deg'
					# tensionIn: 1.4
					expand:
						width: thickness * ( 20 / 85 )
						distr: 1
						angle: - 34 + 'deg'
		#######################################################
		#######################################################
		#######################################################
		# TODO: make it skeleton only with serifBall param
		#######################################################
		#######################################################
		#######################################################
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirOut: contours[0].nodes[2].dirIn
					typeIn: 'line'
				1:
					x: contours[1].nodes[0].x - 75 - 30
					y: contours[1].nodes[0].y - 25 - 30
					typeOut: 'smooth'
					dirIn: Utils.lineAngle({x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y},{x:  contours[1].nodes[2].x, y:  contours[1].nodes[2].y})
				2:
					x: contours[1].nodes[1].x - 60
					y: contours[1].nodes[1].y + 45
					typeIn: 'smooth'
					dirOut: 90 + 'deg'
				3:
					x: contours[1].nodes[2].x + 45
					y: contours[1].nodes[2].y + 40
					typeOut: 'smooth'
					dirOut: 0 + 'deg'
					# tensionOut: 0.3
				4:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirIn: 0
					typeOut: 'line'
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
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0]
			transforms: Array(
				[ 'scaleY', -1 ]
				[ 'skewY', 15 * spurHeight + 'deg' ]
				[ 'translateY',( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
		1:
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
