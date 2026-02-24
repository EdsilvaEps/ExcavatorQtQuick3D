project(MyModule VERSION 0.1 LANGUAGES CXX)

set_source_files_properties(assets/excavator_modded.glb
    PROPERTIES QT_RESOURCE_ALIAS excavator_modded.glb)

qt_add_qml_module(${PROJECT_NAME}lib
    STATIC
    URI MyModule
    QML_FILES
        Joystick.qml
        Excavator_mesh.qml
    RESOURCES
        assets/excavator_modded.glb
        meshes/cab_mesh.mesh
        meshes/mesh_001_mesh.mesh
        meshes/mesh_002_mesh.mesh
        meshes/mesh_004_mesh.mesh
        meshes/mesh_007_mesh.mesh
        meshes/mesh_010_mesh.mesh
        meshes/mesh_011_mesh.mesh
        meshes/mesh_012_mesh.mesh
        meshes/mesh_mesh.mesh

    SOURCES
        backend.h
        backend.cpp
)
