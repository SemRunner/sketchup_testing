include Math
# Default code, use or delete...
mod = Sketchup.active_model # Open model
ent = mod.entities # All entities in model
sel = mod.selection # Current selection

def generate_arc(diam,start_gradus,end_gradus,step)#Генерация точек дуги в центре координат с параметрами: диаметр, градусы (начало,, шаг градусов
    circle = []
    start_gradus.step(end_gradus,step){|angle|          #Построение 3-х окружностей в центре координат
        x = (sin(angle.degrees)*diam.to_f).mm
        y = (cos(angle.degrees)*diam.to_f).mm
        circle << Geom::Point3d.new(x,y,0)
    }
    return circle
end

circle_test = generate_arc(100, 0, 90, 10)

puts circle_test

circle_test.each{|c|
    ent.add_cpoint(c)
}
