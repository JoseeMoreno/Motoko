import Array "mo:base/Array";
import Nat "mo:base/Nat";

actor TaskManager {
    stable var tareas: [Text] = [];

    
    public func agregar_tarea(descripcion: Text): async Text {
        tareas := Array.append(tareas, [descripcion]);
        return "Tarea añadida";
    };

    
    public func mostrar_todas_las_tareas(): async [Text] {
        var tareasExistentes: [Text] = [];
        var i: Nat = 1;
        for (task in tareas.vals()) {
            tareasExistentes := Array.append(tareasExistentes, ["" # Nat.toText(i) # ". " # task]);
            i += 1;
        };
        return tareasExistentes;
    };

    
    public func borrar_tarea(index: Nat): async Text {
        if (index >= 1 and index <= Array.size(tareas)) {
            let indice = index - 1;
            tareas := Array.append(
                Array.subArray(tareas, 0, indice), Array.subArray(tareas, indice + 1, Array.size(tareas) - indice - 1)
            );
            return "Tarea eliminada!";
        } else {
            return "Indice no encontrado, revisa las tareas existentes.";
        };
    };

    
    public func editar_tarea(index: Nat, nuevoCuerpo: Text): async Text {
        if (index >= 1 and index <= Array.size(tareas)) {
            let indice = index - 1;
            

            
            let pre = Array.subArray(tareas, 0, indice);
            let post = Array.subArray(tareas, indice + 1, Array.size(tareas) - indice - 1);

           
            tareas := Array.append(
                Array.append(pre,[nuevoCuerpo] ), post);

            return "Tarea actualizada!";
        } else {
            return "Indice no encontrado, revisa las tareas existentes.";
        };
    };
};
