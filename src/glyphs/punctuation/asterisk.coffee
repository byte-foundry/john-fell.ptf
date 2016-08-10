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
					expand: Object({
						width: ( 55 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - 120
					typeOut: 'line'
					expand: Object({
						width: ( 5 / 90 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[1].y - ( contours[0].nodes[0].y - contours[0].nodes[1].y )
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
					typeOut: 'line'
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[2].expandedTo[0].point )
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y - Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
					typeOut: 'line'
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 140
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - 120
					typeOut: 'line'
					expand: Object({
						width: ( 5 / 90 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[1].y - ( contours[0].nodes[0].y - contours[0].nodes[1].y )
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'rotate', 60 + 'deg' ]
			)
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
					typeOut: 'line'
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'rotate', 60 + 'deg' ]
			)
		5:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[2].expandedTo[0].point )
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y - Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
					typeOut: 'line'
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'rotate', 60 + 'deg' ]
			)
		6:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 140
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - 120
					typeOut: 'line'
					expand: Object({
						width: ( 5 / 90 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[1].y - ( contours[0].nodes[0].y - contours[0].nodes[1].y )
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 90 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'rotate', 120 + 'deg' ]
			)
		7:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
					typeOut: 'line'
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'rotate', 120 + 'deg' ]
			)
		8:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[2].expandedTo[0].point )
				1:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y - Math.min( 35, ( 35 / 90 ) * thickness )
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
					typeOut: 'line'
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'rotate', 120 + 'deg' ]
			)
