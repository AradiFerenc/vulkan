#!/bin/bash
script_dir="${0%/*}"
mkdir "$script_dir/bin";
$script_dir/../dependencies/glslc $script_dir/shader.vert -o $script_dir/bin/shader.vert.spv
$script_dir/../dependencies/glslc $script_dir/shader.frag -o $script_dir/bin/shader.frag.spv
#dependencies/glslc shader.frag -o bin/shader.frag.spv