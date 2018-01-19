exports.glyphs['stroke'] =
	glyphName: "stroke"
	characterName: "stroke"
	anchors:
		0:
			left: parentAnchors[0].left
			right: parentAnchors[0].right
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].left
					y: 0 - overshoot
					dirOut: 0
					typeOut: 'line'
					expand:
						width: thickness * ( 30 / 85 ) * contrast
						angle: Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y},{x:  contours[0].nodes[1].x, y:  contours[0].nodes[1].y} ) + Math.PI / 2
						distr: 0.5
				1:
					x: anchors[0].right
					y: xHeight + overshoot
					dirOut: 0
					typeOut: 'line'
					expand:
						width: thickness * ( 30 / 85 ) * contrast
						angle: Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y},{x:  contours[0].nodes[1].x, y:  contours[0].nodes[1].y} ) + Math.PI / 2
						distr: 0.5
