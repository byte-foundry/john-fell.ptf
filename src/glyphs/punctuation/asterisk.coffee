# todo: this is the asterisk from elzevir actually
exports.glyphs['asterisk'] =
	unicode: '*'
	glyphName: 'asterisk'
	characterName: 'ASTERISK'
	ot:
		advanceWidth: contours[1].nodes[1].y - contours[2].nodes[1].y - (20) + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 10
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
					x: spacingLeft + 140
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 55 / 90 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: capHeight - 120
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 5 / 90 ) * thickness * contrast
						angle: 0
						distr: 0.5
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[1].y - ( contours[0].nodes[0].y - contours[0].nodes[1].y )
					typeIn: 'line'
					expand:
						width: ( 55 / 90 ) * thickness
						angle: 0
						distr: 0.5
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y},{x:  contours[0].nodes[0].expandedTo[0].x, y:  contours[0].nodes[0].expandedTo[0].y})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0
					typeIn: 'smooth'
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y},{x:  contours[0].nodes[1].expandedTo[1].x, y:  contours[0].nodes[1].expandedTo[1].y})
					typeOut: 'line'
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y},{x:  contours[0].nodes[2].expandedTo[0].x, y:  contours[0].nodes[2].expandedTo[0].y})
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y - Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0
					typeIn: 'smooth'
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y},{x:  contours[0].nodes[1].expandedTo[1].x, y:  contours[0].nodes[1].expandedTo[1].y})
					typeOut: 'line'
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 140
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 55 / 90 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: capHeight - 120
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 5 / 90 ) * thickness * contrast
						angle: 0
						distr: 0.5
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[1].y - ( contours[0].nodes[0].y - contours[0].nodes[1].y )
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 55 / 90 ) * thickness
						angle: 0
						distr: 0.5
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'rotate', 60 / 180 * Math.PI]
			)
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y},{x:  contours[0].nodes[0].expandedTo[0].x, y:  contours[0].nodes[0].expandedTo[0].y})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0
					typeIn: 'smooth'
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y},{x:  contours[0].nodes[1].expandedTo[1].x, y:  contours[0].nodes[1].expandedTo[1].y})
					typeOut: 'line'
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'rotate', 60 / 180 * Math.PI]
			)
		5:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y},{x:  contours[0].nodes[2].expandedTo[0].x, y:  contours[0].nodes[2].expandedTo[0].y})
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y - Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0
					typeIn: 'smooth'
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y},{x:  contours[0].nodes[1].expandedTo[1].x, y:  contours[0].nodes[1].expandedTo[1].y})
					typeOut: 'line'
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'rotate', 60 / 180 * Math.PI]
			)
		6:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 140
					y: capHeight
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 55 / 90 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: capHeight - 120
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 5 / 90 ) * thickness * contrast
						angle: 0
						distr: 0.5
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[1].y - ( contours[0].nodes[0].y - contours[0].nodes[1].y )
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 55 / 90 ) * thickness
						angle: 0
						distr: 0.5
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'rotate', 120 / 180 * Math.PI]
			)
		7:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y},{x:  contours[0].nodes[0].expandedTo[0].x, y:  contours[0].nodes[0].expandedTo[0].y})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0
					typeIn: 'smooth'
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y},{x:  contours[0].nodes[1].expandedTo[1].x, y:  contours[0].nodes[1].expandedTo[1].y})
					typeOut: 'line'
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'rotate', 120 / 180 * Math.PI]
			)
		8:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y},{x:  contours[0].nodes[2].expandedTo[0].x, y:  contours[0].nodes[2].expandedTo[0].y})
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y - Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0
					typeIn: 'smooth'
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: Utils.lineAngle({x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y},{x:  contours[0].nodes[1].expandedTo[1].x, y:  contours[0].nodes[1].expandedTo[1].y})
					typeOut: 'line'
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'rotate', 120 / 180 * Math.PI]
			)
