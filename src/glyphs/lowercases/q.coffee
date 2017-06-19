# TODO: width
exports.glyphs['q'] =
	unicode: 'q'
	glyphName: 'q'
	characterName: 'LATIN SMALL LETTER Q'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45 + (21)
		spacingRight: 50 * spacing + 35 + (16) + serifWidth + 15
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
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x + 200 * width + 250 - (20),
						contours[1].nodes[2].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: descender * ( 220 / 250 ) + Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.75
						angle: 0
				1:
					x: contours[0].nodes[0].x
					y: xHeight - 110
					y: contours[0].nodes[2].y - Math.min( 50, ( 50 / 85 ) * thickness )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.75
						angle: 0
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight - 60
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: thickness * ( 33 / 85 )
						distr: 1
						angle: 0
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: thickness * ( 5 / 85 )
						distr: 1
						angle: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 10 / 85 )
					y: 75
					dirOut: - 125 + 'deg'
					dirOut: if width <= 1.2 then - 125 + 125 * width - 125 + 'deg' else  - 140 + 15 * width + 'deg'
					typeIn: 'smooth'
					expand:
						width:  Math.min( thickness * ( 30 / 85 ), ( thickness * ( 30 / 85 ) / 500 ) * xHeight )
						angle: 90 + 'deg'
						distr: 0
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * 0.58
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 50 / 85 )
						angle: 45 + 'deg'
						distr: 0
				2:
					x: spacingLeft
					y: xHeight * ( 257 / 500 )
					dirOut: 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: thickness * ( 91 / 85 )
						angle: 15 + 'deg'
						distr: 0.25
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[4].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * 0.6
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					tensionIn: 1.1
					typeOut: 'smooth'
					expand:
						width: thickness * ( 20 / 85 )
						angle: - 104 + 'deg'
						distr: 0
				4:
					dirIn: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y},{x:  contours[0].nodes[2].expandedTo[0].x, y:  contours[0].nodes[2].expandedTo[0].y} ) - Math.PI / 2
					dirOut:
						if thickness < 30
						then Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y},{x:  contours[0].nodes[2].expandedTo[0].x, y:  contours[0].nodes[2].expandedTo[0].y} ) - Math.PI / 2
						else 118 + 'deg'
					expandedTo: [
						x: contours[0].nodes[2].expandedTo[0].x
						y: contours[0].nodes[2].expandedTo[0].y
					,
						x: contours[0].nodes[1].expandedTo[0].x
						y: contours[0].nodes[1].expandedTo[0].y
					]
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
