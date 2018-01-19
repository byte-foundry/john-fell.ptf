# todo: this is the arobase from elzevir actually
exports.glyphs['arobase'] =
	unicode: '@'
	glyphName: 'at'
	characterName: 'COMMERCIAL AT'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + 700 + 300 * width - (7)
					y: 0
					dirOut:( - 115 ) / 180 * Math.PI
					expand:
						width: ( 30 / 90 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - 242
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 25 / 90 ) * thickness
						angle: 180 + Math.PI / 2
						distr: 0.25
				2:
					x: spacingLeft + (53/90) * thickness
					y: contours[0].nodes[1].y + ( contours[0].nodes[3].y - contours[0].nodes[1].y ) * 0.5
					dirOut: Math.PI / 2
					expand:
						width: ( 70 / 90 ) * thickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].x + ( contours[0].nodes[4].x - contours[0].nodes[2].x ) * 0.5
					y: xHeight + 260
					dirOut: 0
					expand:
						width: ( 25 / 90 ) * thickness
						angle: Math.PI / 2
						distr: 0.25
				4:
					x: contours[0].nodes[0].x + (7)
					y: ( 343 / 500 ) * xHeight
					dirOut: - Math.PI / 2
					expand:
						width: ( 70 / 90 ) * thickness
						angle: 0
						distr: 0.25
				5:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.38
					x: contours[0].nodes[6].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[6].expandedTo[1].x ) * 0.5
					y: 0
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 35 / 90 ) * thickness
						angle:( 180 + 62 ) / 180 * Math.PI
						distr: 0.25
				6:
					x: contours[1].nodes[1].x + 80 * width + (21/90) * thickness
					y: Math.max(
						( 200 / 500 ) * xHeight,
						200
					)
					dirIn: Utils.lineAngle({x: contours[0].nodes[6].x, y: contours[0].nodes[6].y},{x:  contours[0].nodes[7].x, y:  contours[0].nodes[7].y} )
					typeOut: 'line'
					expand:
						width: ( 85 / 90 ) * thickness
						angle: Math.PI
						distr: 0.75
				7:
					x: contours[0].nodes[6].x + 15 + Math.min( 55, ( 55 / 500 ) * xHeight )
					y: ( 480 / 500 ) * xHeight
					typeIn: 'line'
					expand:
						width: ( 85 / 90 ) * thickness
						angle: Math.PI
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				4:
					x: contours[0].nodes[6].expandedTo[1].x
					y: contours[0].nodes[6].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[0].nodes[7].x, y: contours[0].nodes[7].y},{x:  contours[0].nodes[6].x, y:  contours[0].nodes[6].y} )
					expand:
						width: ( 30 / 90 ) * thickness
						angle: Math.PI + Utils.lineAngle({x: contours[0].nodes[6].x, y: contours[0].nodes[6].y},{x:  contours[0].nodes[5].expandedTo[0].x, y:  contours[0].nodes[5].expandedTo[0].y})
						distr: 1
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[4].expandedTo[1].x - contours[1].nodes[2].expandedTo[0].x ) * 0.5
					y: 20
					dirOut: 0
					typeIn: 'smooth'
					expand:
						width: ( 68 / 90 ) * thickness
						angle:( 47 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[1].nodes[1].x - 170 - 80 * width + (25/90) * thickness
					y: contours[1].nodes[3].y + ( contours[1].nodes[0].y - contours[1].nodes[3].y ) * 0.55
					dirOut: - Math.PI / 2
					typeIn: 'smooth'
					expand:
						width: ( 100 / 90 ) * thickness
						angle: 10 / 180 * Math.PI
						distr: 0.75
				1:
					x: contours[0].nodes[3].x + 5 * width
					y: ( 490 / 500 ) * xHeight
					dirOut: Math.PI
					typeIn: 'smooth'
					expand:
						width: ( 25 / 90 ) * thickness
						angle:( - 95 ) / 180 * Math.PI
						distr: 0
				0:
					x: Utils.onLine({
						y: contours[0].nodes[7].y - ( 125 / 500 ) * xHeight
						on: [ contours[0].nodes[6].expandedTo[1], contours[0].nodes[7].expandedTo[1] ]
					})
					y: contours[0].nodes[7].y - ( 125 / 500 ) * xHeight
					dirOut: Math.PI / 2
					expand:
						width: ( 20 / 90 ) * thickness
						angle:( 180 + 15 ) / 180 * Math.PI
						distr: 1
