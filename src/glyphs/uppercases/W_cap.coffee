# TODO: width + thickness
exports.glyphs['W_cap'] =
	unicode: 'W'
	glyphName: 'W'
	characterName: 'LATIN CAPITAL LETTER W'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (15) + serifWidth + 10
		spacingRight: 50 * spacing + 10 + serifWidth + 30
		serifHeight: serifHeight * serifOpticThickness
		serifCurve: serifCurve + 65
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: capHeight * ( 500 / 750 )
						on: [ contours[3].nodes[0].expandedTo[0], contours[3].nodes[1].expandedTo[0] ]
					})
					y: capHeight * ( 500 / 750 )
					typeOut: 'line'
					expand:
						width: thickness * ( 33 / 85 )
						angle: 0
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[1].x + 100 * width + 60 + (28)
					y: - overshoot
					typeIn: 'line'
					expand:
						width: thickness * ( 25 / 85 )
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 0
						distr: 0.25
				1:
					typeIn: 'line'
					typeOut: 'line'
					expandedTo:
						[
							{
								x: Utils.onLine({
									y: thickness * ( 120 / 85 )
									on: [ contours[1].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
								})
								y: thickness * ( 120 / 85 )
							}
							{
								x: Utils.onLine({
									y: thickness * ( 120 / 85 )
									on: [ contours[0].nodes[1].expandedTo[0], contours[0].nodes[0].expandedTo[0] ]
								})
								y: thickness * ( 120 / 85 )
							}
						]
				2:
					x: contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expand.width
					y: - overshoot
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: thickness * ( 25 / 85 )
						angle: 0
						distr: 1
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[3].nodes[0].expandedTo[1].x + 200 * width + 190 + (12)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 39 / 85 )
						angle: 0
						distr: 0.25
				1:
					x: contours[1].nodes[2].expandedTo[1].x + 200 * width + 170 + (0)
					y: - overshoot
					typeIn: 'line'
					expand:
						width: thickness * ( 25 / 85 )
						angle: 0
						distr: 0.25
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 200 * width + 190 + (0)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: thickness * ( 110 / 85 )
						angle: 0
						distr: 1
				1:
					typeIn: 'line'
					typeOut: 'line'
					expandedTo:
						[
							{
								x: Utils.onLine({
									y: thickness * ( 138 / 85 )
									on: [ contours[3].nodes[0].expandedTo[0], contours[2].nodes[1].expandedTo[0] ]
								})
								y: thickness * ( 138 / 85 )
							}
							{
								x: Utils.onLine({
									y: thickness * ( 138 / 85 )
									on: [ contours[2].nodes[1].expandedTo[0], contours[2].nodes[0].expandedTo[0] ]
								})
								y: thickness * ( 138 / 85 )
							}
						]
				2:
					x: contours[2].nodes[1].expandedTo[0].x + contours[2].nodes[1].expand.width
					y: - overshoot
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: thickness * ( 25 / 85 )
						angle: 0
						distr: 1
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'firstleft'
			class: 'vLeft'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 10
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'firstright'
			class: 'vLeftInside'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 45
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'secondleft'
			class: 'vRightInside'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0]
					noneAnchor: contours[2].nodes[0].expandedTo[0]
					opposite: contours[2].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[2].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 80
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'secondright'
			class: 'vRight'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1]
			transformOrigin: contours[2].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 30
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdleft'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[0]
					noneAnchor: contours[3].nodes[0].expandedTo[0]
					opposite: contours[3].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[3].nodes[1].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[3].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 15
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdright'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[1]
					noneAnchor: contours[3].nodes[0].expandedTo[1]
					opposite: contours[3].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[3].nodes[1].expandedTo[1]
			transformOrigin: contours[3].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: serifWidth + 65
