exports.glyphs['b'] =
	unicode: 'b'
	glyphName: 'b'
	characterName: 'LATIN SMALL LETTER B'
	ot:
		advanceWidth: contours[1].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + serifWidth
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
					x: spacingLeft
					y: 0
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: thickness * ( 5 / 85 )
						distr: 0
						angle: 0
				1:
					x: contours[0].nodes[0].x
					# y: xHeight * ( 195 / 500 )
					y: 75
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * 40 / 85
						angle: 0
						distr: 0
				2:
					x: contours[0].nodes[0].x
					# y: xHeight * ( 195 / 500 )
					y: 75
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0
				3:
					x: contours[0].nodes[0].x + thickness * 0.25
					# y: xHeight * ( 195 / 500 )
					y: contours[0].nodes[1].y
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0.25
						angle: 0
				4:
					x: contours[0].nodes[0].x + thickness * 0.25
					y: ascenderHeight - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					typeIn: 'line'
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
					x: contours[1].nodes[1].x
					y: contours[1].nodes[1].y
					typeOut: 'line'
					expand:
						width: thickness
						distr: 0
						angle: Math.PI
				1:
					x: contours[0].nodes[2].expandedTo[1].x - 5
					y: contours[0].nodes[2].y + 50
					typeIn: 'line'
					dirOut: 107 / 180 * Math.PI
					expand:
						width: thickness * (80 / 85)
						distr: 0
						angle: Math.PI
					# expandedTo: [
					# 	{
					# 		x: contours[0].nodes[4].expandedTo[1].x
					# 		y: 70
					# 		dirOut: Math.max( - 70,( Math.min( -50 , if width <= 1.2 then - ( 65 / 85 ) * thickness + 65 * width - 65 else - ( 65 / 85 ) * thickness + 15 * width ) ) ) / 180 * Math.PI
					# 		dirIn: Math.max( - 70,( Math.min( -50 , if width <= 1.2 then - ( 53 / 85 ) * thickness + 53 * width - 53 else - ( 58 / 85 ) * thickness + 15 * width ) ) ) / 180 * Math.PI
					# 	},
					# 	{
					# 		x: Utils.onLine({
					# 			y: contours[1].nodes[1].expandedTo[0].y - 5
					# 			on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1] ]
					# 		})
					# 		y: contours[1].nodes[1].expandedTo[0].y - 5
					# 		dirOut: Math.max( - 70,( Math.min( -50 , if width <= 1.2 then - ( 65 / 85 ) * thickness + 65 * width - 65 else - ( 65 / 85 ) * thickness + 15 * width ) ) ) / 180 * Math.PI
					# 		dirIn: Math.max( - 70,( Math.min( -50 , if width <= 1.2 then - ( 53 / 85 ) * thickness + 53 * width - 53 else - ( 58 / 85 ) * thickness + 15 * width ) ) ) / 180 * Math.PI
					# 	}
					# ]
				2:
					x: contours[1].nodes[5].expandedTo[1].x + ( contours[1].nodes[3].expandedTo[0].x - contours[1].nodes[5].expandedTo[1].x ) * 0.5
					# x: contours[1].nodes[3].expandedTo[0].x
					y: - overshoot
					dirIn: 0
					typeOut: 'smooth'
					expand:
						width: thickness * ( 10 / 86 ) + thickness * contrast * ( 10 / 86 )
						angle:( 180 + 76 ) / 180 * Math.PI
						distr: 1
				3:
					x: contours[0].nodes[4].expandedTo[1].x + 100 + 265 * width - (21)
					y: xHeight * ( 250 / 500 )
					dirIn: Math.PI / 2
					typeOut: 'smooth'
					expand:
						width: thickness * ( 97 / 86 )
						angle:( 180 - 174 ) / 180 * Math.PI
						distr: 0.75
				4:
					x: contours[1].nodes[5].x + ( contours[1].nodes[3].expandedTo[1].x - contours[1].nodes[5].x ) * 0.4
					y: xHeight + overshoot / 2
					dirIn: 0
					typeOut: 'smooth'
					expand:
						width: thickness * ( 35 / 86 ) + thickness * ( 15 / 86 ) * contrast
						angle:( 180 - 135 ) / 180 * Math.PI
						distr: 1
				5:
					x: contours[0].nodes[4].expandedTo[1].x - ( 10 / 85 ) * thickness
					# y: xHeight * ( 350 / 500 )
					y: xHeight - 100
					# dirOut:( 55 ) / 180 * Math.PI
					dirIn: if width <= 1.2 then (55 - 55 * width + 55 ) / 180 * Math.PI else (55 - 5 * width ) / 180 * Math.PI
					expand:
						width: ( 10 / 85 ) * thickness + ( 15 / 85 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x
					y: ascenderHeight
					typeOut: 'line'
					dirIn: Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y}, {x: contours[2].nodes[4].x, y: contours[2].nodes[4].y}) - Math.PI / 12 * spurHeight * -serifArc / 1.5
				1:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y - 10
					typeOut: 'line'
				2:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].expandedTo[1].y - 10
					typeOut: 'line'
				3:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].expandedTo[1].y
					typeOut: 'line'
				4:
					x: ( contours[0].nodes[4].expandedTo[0].x + contours[0].nodes[4].expandedTo[1].x ) / 2
					y: ascenderHeight - serifHeight * serifArc
					dirOut: Math.PI / 12 * spurHeight * Math.abs(serifArc / 1.5)
					typeIn: 'line'
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'attaque'
			class: 'attaqueTopLeft'
			parentAnchors:
				0:
					base: contours[0].nodes[4].expandedTo[0]
					noneAnchor: contours[0].nodes[4].expandedTo[0]
					opposite: contours[0].nodes[4].expandedTo[1]
			transformOrigin: contours[0].nodes[4]
			transforms: Array(
				[ 'scaleY', -1 ]
				[ 'skewY',( 15 * spurHeight ) / 180 * Math.PI ],
				[ 'translateY',( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness * 0.25 ) ) ]
			)
			parameters:
				serifCurve: serifCurve + 30
				serifMedian: serifMedian / 2 - 0.12
				serifHeight: serifHeight + 12
