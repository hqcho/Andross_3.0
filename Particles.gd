extends Particles


[gd_scene load_steps=6 format=2]

[sub_resource type="Curve" id=2]
_data = [ Vector2( 0, 1 ), 0.0, 0.0, 0, 0, Vector2( 1, 0.340909 ), 0.0, 0.0, 0, 0 ]

[sub_resource type="CurveTexture" id=3]
curve = SubResource( 2 )

[sub_resource type="ParticlesMaterial" id=4]
emission_shape = 1
emission_sphere_radius = 0.3
direction = Vector3( 0, 0, 1 )
spread = 0.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 91.95
scale_curve = SubResource( 3 )

[sub_resource type="SpatialMaterial" id=5]
albedo_color = Color( 0.960784, 1, 0.494118, 1 )
emission_enabled = true
emission = Color( 0.956863, 1, 0.596078, 1 )
emission_energy = 1.0
emission_operator = 0
emission_on_uv2 = false

[sub_resource type="CubeMesh" id=6]
material = SubResource( 5 )
size = Vector3( 0.5, 0.5, 0.5 )

[node name="Particles" type="Particles"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -0.207298, 2.04383 )
amount = 3
lifetime = 0.1
randomness = 0.41
process_material = SubResource( 4 )
draw_pass_1 = SubResource( 6 )
