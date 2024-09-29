varying vec3 vColor;

uniform sampler2D uTexture;

void main()
{
    // // Disc
    // float strength = distance(gl_PointCoord, vec2(0.5));
    // strength = step(0.5, strength);
    // strength = 1.0 - strength;

    // // Diffuse point
    // float strength = distance(gl_PointCoord, vec2(0.5));
    // strength *= 2.0;
    // strength = 1.0 - strength;

    // gl_FragColor = texture2D(uTexture, gl_PointCoord);

    // Light point
    // float strength = distance(gl_PointCoord, vec2(0.5));
    // strength = 1.0 - strength;
    // strength = pow(strength, 10.0);

    // Final color
    // vec3 color = mix(vec3(0.0), vColor, strength);
    // gl_FragColor = vec4(color, 1.0);

    // combine vertex color with the texture
    vec3 textureColor = texture2D(uTexture, gl_PointCoord).rgb;
    gl_FragColor = vec4(textureColor * vColor, 1.0);

    #include <colorspace_fragment>
}