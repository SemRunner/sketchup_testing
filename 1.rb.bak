pre_pts = nil

mesh = Geom::PolygonMesh.new
j = 0
#test_points.each{|pts|
test_aarray.each {|pts| #pts - точки опорных окружностей сегментов
    if pre_pts!=nil
        if pts!=pre_pts
            for i in 0..(pts.length-2)
                point1 = pts[i]
                point2 = pts[i+1]
                point3 = pre_pts[i+1]
                point4 = pre_pts[i]
                puts point1, point2, point3, point4
                mesh.add_polygon point1, point2, point3, point4
            end
        end
        pre_pts = pts
    else
        pre_pts = pts
    end
}
