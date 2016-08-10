# todo: this is the underscore from elzevir actually
exports.glyphs['underscore'] =
	unicode: '_'
	glyphName: 'underscore'
	characterName: 'LOW LINE'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 5
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
					x: spacingLeft
					y: - 50
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: 450 * width
					y: - 50
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 90 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
