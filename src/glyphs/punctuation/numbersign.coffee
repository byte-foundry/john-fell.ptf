# todo: this is the numbersign from elzevir actually
exports.glyphs['numbersign'] =
	unicode: '#'
	glyphName: 'numbersign'
	characterName: 'NUMBER SIGN'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
		'test'
	]
	parameters:
		spacingLeft: 50 * spacing + 20 + (2)
		spacingRight: 50 * spacing + 20
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 200
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 82 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[1].expandedTo[1].x + 200 * width + 100 + (20)
					y: 200
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 82 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + Math.tan( 8 * Math.PI / 180 ) * ( contours[1].nodes[1].expandedTo[1].y - contours[0].nodes[0].expandedTo[0].y )
					y: xHeight - 40
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 82 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x +
						Math.tan( 8 * Math.PI / 180 ) *
						( xHeight + ( Math.cos( 8 * Math.PI / 180 ) * ( ( 70 / 90 ) * thickness ) ) / 2 - contours[0].nodes[0].expandedTo[0].y )
					y: xHeight - 40
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 90 ) * thickness
						angle: 82 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[3].nodes[0].x - ( contours[3].nodes[1].x - contours[2].nodes[1].x )
					y: xHeight + contours[0].nodes[0].expandedTo[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 35 / 90 ) * thickness * contrast, minThickness )
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x + Math.max(
						thickness / 2,
						60 * width
					) + (55)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 35 / 90 ) * thickness * contrast, minThickness )
						angle: 0 + 'deg'
						distr: 0.5
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x - Math.max( thickness / 2, 80 * width ) - (29)
					y: contours[2].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 35 / 90 ) * thickness * contrast, minThickness )
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x - Math.max( thickness / 2, 80 * width ) - (81)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: Math.min( ( 35 / 90 ) * thickness * contrast, minThickness )
						angle: 0 + 'deg'
						distr: 0.5
					})
