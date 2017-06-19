exports.glyphs['z'] =
	unicode: 'z'
	glyphName: 'z'
	characterName: 'LATIN SMALL LETTER Z'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 40
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].x + ( contours[0].nodes[0].x - contours[0].nodes[1].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x + 5
					y: xHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 85 )
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: spacingLeft + 20 + Math.max( 0, serifHeight * serifArc ) + ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					y: xHeight
					typeIn: 'line'
					expand:
						width: thickness * ( 30 / 85 )
						angle: - 90 + 'deg'
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					typeOut: 'line'
					expand:
						width: thickness * ( 20 / 85 )
						angle: 90 + 'deg'
						distr: 0
				1:
					x: contours[1].nodes[0].x + 200 * width + 190
					y: 0
					typeIn: 'line'
					expand:
						width: thickness * ( 30 / 85 )
						angle: 90 + 'deg'
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: thickness * ( 92 / 85 )
						angle: ( Math.PI / 2 ) + Math.acos( (thickness * ( 20 / 85 )) / (thickness * ( 92 / 85 )) )
						distr: 1
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: thickness * ( 89 / 85 )
						angle: ( Math.PI / 2 ) + Math.acos( (thickness * ( 20 / 85 )) / (thickness * ( 89 / 85 )) )
						distr: 0
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'scaleY', -1 ]
				[ 'skewX', 15 * spurHeight + 'deg' ],
				[ 'translateX',- ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
		1:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleX', -1 ]
				[ 'skewX', 15 * spurHeight + 'deg' ],
				[ 'translateX',-( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'middletop'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
