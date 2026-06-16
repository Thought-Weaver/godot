class_name DataClass extends RefCounted

var _some_string: String = ""
var _some_int: int = 0


func _init(a_string: String, an_int: int) -> void:
    _some_string = a_string
    _some_int = an_int


func _to_string() -> String:
    return "{ss} - {si}".format({ ss = _some_string, si = _some_int })


func serialize() -> Dictionary:
    return {
        "some_string": _some_string,
        "some_int": _some_int,
    }


static func create(data: Dictionary) -> DataClass:
    var data_class: DataClass = DataClass.new(data.get("some_string", ""), data.get("some_int", 0))

    return data_class
