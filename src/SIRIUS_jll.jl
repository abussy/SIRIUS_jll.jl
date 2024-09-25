# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SIRIUS_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("SIRIUS")
JLLWrappers.@generate_main_file("SIRIUS", UUID("6b659922-2939-5935-a7a2-1bdd48c7820f"))
end  # module SIRIUS_jll
