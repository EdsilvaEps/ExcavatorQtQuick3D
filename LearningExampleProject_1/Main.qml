import QtQuick
import QtQuick3D
import QtQuick.Controls
import QtQuick3D.Helpers
import QtQuick3D.AssetUtils
import MyModule

Window {
    width: 640
    height: 480
    visible: true
    color: "black"

    View3D {
        anchors.fill: parent

        /*environment: SceneEnvironment {
            clearColor: "#202020"
            backgroundMode: SceneEnvironment.Color
        }*/

        /*environment: SceneEnvironment {
            backgroundMode: SceneEnvironment.Color
            clearColor: "black"
            InfiniteGrid {
                gridInterval: 100
            }
        }*/

        environment: ExtendedSceneEnvironment {
            backgroundMode: SceneEnvironment.SkyBox
            lightProbe: Texture {
                textureData: ProceduralSkyTextureData { }
            }
            ditheringEnabled: true
            InfiniteGrid {
                gridInterval: 100
            }
        }



        Node {
            id: sceneRoot
            eulerRotation.x: -10
            eulerRotation.y: -10
            PerspectiveCamera {
                id: cameraNode
                z: 500
                x: -35
                y: 70
            }

        }

        OrbitCameraController {
            origin: sceneRoot
            camera: cameraNode
        }

        DirectionalLight { }

        Node {
                id: excavator //modelNode
                eulerRotation.y: 60
                scale: Qt.vector3d(30, 30, 30)



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

                    Node {
                        id: excavBody

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

                        Behavior on eulerRotation.z {
                            NumberAnimation  {
                                duration: 60
                                easing.type: Easing.InOutQuad
                            }
                        }

                        Node {
                            id: armEnsemble

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
                                id: bucketModel
                                objectName: "bucket"
                                position: Qt.vector3d(-1.90735e-08, -1.98993, 0.379082)
                                rotation: Qt.quaternion(1, -2.18557e-08, 0, 0)
                                scale: Qt.vector3d(0.01, 0.01, 0.01)
                                source: "meshes/mesh_002_mesh.mesh"
                                materials: [
                                    material__1345_material
                                ]
                                Behavior on eulerRotation {
                                    NumberAnimation  {
                                        duration: 60
                                        easing.type: Easing.InOutQuad
                                    }
                                }
                            }
                        }

                        Behavior on eulerRotation.x {
                            NumberAnimation  {
                                duration: 60
                                easing.type: Easing.InOutQuad
                            }
                        }
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
                }



                /*Excavator_mesh {
                    id: excavator
                    scale: Qt.vector3d(30, 30, 30)

                    Component.onCompleted: {
                        console.log("Loaded:", excavator.item)
                        function printNodes(node, indent) {
                            console.log(indent + "Node:", node, " name:", node.objectName, " type:", node)
                            for (let c of node.children)
                                printNodes(c, indent + " ")
                        }
                        printNodes(excavator, "")
                    }


                }*/

        }

    }




    Joystick {
        id: joystick

        // TODO: add backend actions
        //onJoyXChanged: backend.updateRotation(joyX, joyY)
        //onJoyYChanged: backend.updateRotation(joyX, joyY)
    }

    Backend{
        id:backend
    }

    Timer {
        id: repeatTimer
        interval: 16
        repeat: true
        running: joystick.command !== "None"

        onTriggered: {
            if (joystick.command === "Lift") {
                backend.moveArm(+0.5)
            } else if (joystick.command === "Lower") {
                backend.moveArm(-0.5)
            } else if (joystick.command === "Open") {
                backend.moveBucket(+0.5)
            } else if (joystick.command === "Close") {
                backend.moveBucket(-0.5)
            }
        }
    }

    /*Connections {
        target: joystick

        function onCommandChanged() {
            if (joystick.command === "Lift") {
                backend.moveArm(+1)
            } else if (joystick.command === "Lower") {
                backend.moveArm(-1)
            } else if (joystick.command === "Open") {
                backend.moveBucket(+1)
            } else if (joystick.command === "Close") {
                backend.moveBucket(-1)
            }
        }
    }*/


    Connections {
        target: backend

        function onArmRotationChanged() {
            //bucket.eulerRotation.x = backend.rotationX
            console.log("Excavator arm rotation: ", backend.armRotation)

            armEnsemble.eulerRotation.x = backend.armRotation

        }

        function onBucketRotationChanged() {
            //bucket.eulerRotation.x = backend.rotationX
            console.log("Bucket rotation: ", backend.bucketRotation)

            excavBody.eulerRotation.z = backend.bucketRotation

        }

    }



}
