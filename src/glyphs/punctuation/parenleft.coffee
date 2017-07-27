exports.glyphs['parenleft'] =
	unicode: '('
	glyphName: 'parenleft'
	characterName: 'LEFT PARENTHESIS'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 90
		spacingRight: 50 * spacing - 20
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
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 143 + 100 * width - (0),
						contours[0].nodes[1].expandedTo[1].x + 50
					)
					y: capHeight + overshoot
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].expandedTo[0].point ) - ( 25 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 12 / 85 )
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0
					})
				1:
					x: spacingLeft + (15/85) * thickness
					y: ( contours[0].nodes[0].y + contours[0].nodes[2].y ) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 60 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( 180 / 210 ) * descender
					dirIn: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[1].expandedTo[0].point ) + ( 25 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 12 / 85 )
						angle: contours[0].nodes[2].dirIn - Math.PI / 2
						distr: 0
					})
