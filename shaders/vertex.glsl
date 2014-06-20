attribute vec3 position;
attribute float arcLength;

uniform mat4 model, view, projection;

varying vec3 worldPosition;
varying float pixelArcLength;

void main() {
  vec4 worldCoordinate = model * vec4(position, 1);
  gl_Position = projection * view * worldCoordinate;
  worldPosition = worldCoordinate.xyz / worldCoordinate.w;
  pixelArcLength = arcLength;
}