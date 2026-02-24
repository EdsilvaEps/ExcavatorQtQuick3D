import QtQuick
import QtQuick3D
import MyModule

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: node02___Default_material
        objectName: "02 - Default"
        baseColor: "#ff141414"
    }
    PrincipledMaterial {
        id: material__1280_material
        objectName: "Material #1280"
        baseColor: "#ff464646"
    }
    PrincipledMaterial {
        id: material__1345_material
        objectName: "Material #1345"
        baseColor: "#ffeaac06"
    }
    PrincipledMaterial {
        id: material__1269_material
        objectName: "Material #1269"
        baseColor: "#ff969696"
    }
    PrincipledMaterial {
        id: material__1270_material
        objectName: "Material #1270"
        baseColor: "#ff2a2a2a"
    }
    PrincipledMaterial {
        id: material__1271_material
        objectName: "Material #1271"
        baseColor: "#ffb2b2b2"
    }
    PrincipledMaterial {
        id: material__1272_material
        objectName: "Material #1272"
        baseColor: "#ff969696"
    }


    // Nodes:
    Node {
        id: scene
        objectName: "Scene"
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        Model {
            id: trake_shoe_assembly001
            objectName: "trake_shoe_assembly001"
            position: Qt.vector3d(-1.90735e-08, -1.98993, 0.379082)
            rotation: Qt.quaternion(1, -2.18557e-08, 0, 0)
            scale: Qt.vector3d(0.01, 0.01, 0.01)
            source: "meshes/mesh_012_mesh.mesh"
            materials: [
                node02___Default_material
            ]
        }
        Model {
            id: object02
            objectName: "Object02"
            position: Qt.vector3d(1.15803, -3.65392, 0.339236)
            rotation: Qt.quaternion(1, -2.18557e-08, 0, 8.7423e-08)
            scale: Qt.vector3d(0.01, 0.01, 0.01)
            source: "meshes/mesh_011_mesh.mesh"
            materials: [
                material__1280_material
            ]
        }
        Model {
            id: object04
            objectName: "Object04"
            position: Qt.vector3d(1.15803, -0.32499, 0.339236)
            rotation: Qt.quaternion(1, -2.18557e-08, 0, 8.7423e-08)
            scale: Qt.vector3d(0.01, 0.01, 0.01)
            source: "meshes/mesh_010_mesh.mesh"
            materials: [
                material__1280_material
            ]
        }
        Model {
            id: trake_shoe_assembly
            objectName: "trake_shoe_assembly"
            position: Qt.vector3d(-1.90735e-08, -1.98993, 0.379082)
            rotation: Qt.quaternion(1, -2.18557e-08, 0, 0)
            scale: Qt.vector3d(0.01, 0.01, 0.01)
            source: "meshes/mesh_007_mesh.mesh"
            materials: [
                node02___Default_material
            ]
        }
        Model {
            id: cab
            objectName: "cab"
            position: Qt.vector3d(-1.90735e-08, -1.98993, 0.379082)
            rotation: Qt.quaternion(1, -2.18557e-08, 0, 0)
            scale: Qt.vector3d(0.01, 0.01, 0.01)
            source: "meshes/cab_mesh.mesh"
            materials: [
                material__1345_material,
                material__1269_material,
                material__1270_material,
                material__1271_material,
                material__1272_material
            ]
        }
        Model {
            id: arm
            objectName: "arm"
            position: Qt.vector3d(-1.90735e-08, -1.98993, 0.379082)
            rotation: Qt.quaternion(1, -2.18557e-08, 0, 0)
            scale: Qt.vector3d(0.01, 0.01, 0.01)
            source: "meshes/mesh_004_mesh.mesh"
            materials: [
                material__1345_material
            ]
        }
        Model {
            id: bucket
            objectName: "bucket"
            position: Qt.vector3d(-1.90735e-08, -1.98993, 0.379082)
            rotation: Qt.quaternion(1, -2.18557e-08, 0, 0)
            scale: Qt.vector3d(0.01, 0.01, 0.01)
            source: "meshes/mesh_002_mesh.mesh"
            materials: [
                material__1345_material
            ]

        }
        Model {
            id: cngien_chamber
            objectName: "cngien_chamber"
            position: Qt.vector3d(-1.90735e-08, -1.98993, 0.379082)
            rotation: Qt.quaternion(1, -2.18557e-08, 0, 0)
            scale: Qt.vector3d(0.01, 0.01, 0.01)
            source: "meshes/mesh_001_mesh.mesh"
            materials: [
                material__1345_material
            ]
        }
        Model {
            id: roller_chamber
            objectName: "roller_chamber"
            position: Qt.vector3d(-1.52588e-07, -1.98833, 0.371427)
            rotation: Qt.quaternion(1, -2.18557e-08, 0, 0)
            scale: Qt.vector3d(0.01, 0.01, 0.01)
            source: "meshes/mesh_mesh.mesh"
            materials: [
                material__1280_material
            ]
        }
        /*PerspectiveCamera {
            id: camera_camera
            objectName: "Camera"
            position: Qt.vector3d(7.35889, -6.92579, 4.95831)
            rotation: Qt.quaternion(0.780483, 0.483536, 0.208704, 0.336872)
            scale: Qt.vector3d(1, 1, 1)
            clipNear: 0.10000000149011612
            clipFar: 100
            fieldOfView: 39.59775161743164
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
        } */
        /*PointLight {
            id: light_light
            objectName: "Light"
            position: Qt.vector3d(4.07624, 1.00545, 5.90386)
            rotation: Qt.quaternion(0.570948, 0.169076, 0.272171, 0.75588)
            scale: Qt.vector3d(1, 1, 1)
            brightness: 1000
            quadraticFade: 0
        }*/
    }

    // Animations:
}
