package luxe.components.physics.bullet.three;


#if haxebullet


    import luxe.Vector;

    import bullet.bulletCollision.collisionShapes.BtBvhTriangleMeshShape;

    import luxe.components.physics.bullet.three.ShapeCollider;


    class MeshCollider extends ShapeCollider {
        
        public var mesh : Mesh;
        public var quantization : Bool = true;
        public var build_bvh : Bool = true;

        override function init() {
            
            var mesh_vertices : Array<Float> = [];
            
            for(_vert in mesh.geometry.vertices) {
                mesh_vertices.push(_vert.pos.x);
                mesh_vertices.push(_vert.pos.y);
                mesh_vertices.push(_vert.pos.z);
            }

            shape = new BtBvhTriangleMeshShape( mesh_vertices, quantization, build_bvh );

        } //init

    } //MeshCollider


#end //haxebullet
