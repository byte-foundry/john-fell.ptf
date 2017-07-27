# todo: thickness
exports.glyphs['comma'] =
	unicode: ','
	glyphName: 'comma'
	characterName: 'COMMA'
	ot:
		advanceWidth: contours[0].nodes[3].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 65
		spacingRight: 50 * spacing + 65
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			x: spacingLeft + 60
			y: - overshoot / 2
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					type: 'smooth'
				1:
					x: anchors[0].x - Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 85 )
						)
					) / 2
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 85 )
						)
					) / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: anchors[0].x
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 85 )
						)
					)
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: anchors[0].x + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 85 )
						)
					) / 2
					y: anchors[0].y + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 85 )
						)
					) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 43 / 85 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[3].x
					y: anchors[0].y + 20
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 43 / 85 ) * thickness
						angle: 190 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[1].x
					y: anchors[0].y - 60 - Math.min( thickness, 150 )
					type: 'smooth'
					expand: Object({
						width: ( 18 / 85 ) * thickness
						angle: 106 + 'deg'
						distr: 0
					})
