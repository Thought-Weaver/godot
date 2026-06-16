func test() -> void:
	var first_array: Array[int] = [0, 1, 2]
	
	var result_typed: Array[bool] = first_array.map(func (i: int) -> bool: return i == 1)
	print(result_typed)

	var result_untyped: Array = first_array.map(func (i: int) -> bool: return i == 1)
	print(result_untyped)

	var second_array: Array = [1, false, "lighthouse"]

	var result_from_variant_typed: Array[String] = second_array.map(func (x) -> String: return str(x))
	print(result_from_variant_typed)

	var result_from_variant_untyped = second_array.map(func (x): return str(x))
	print(result_from_variant_untyped)

	var data_class_array: Array[DataClass] = [DataClass.new("wizard", 2), DataClass.new("sorcerer", -1)]
	
	var result_from_data_class_typed: Array[Dictionary] = data_class_array.map(func (dc: DataClass) -> Dictionary: return dc.serialize())
	print(result_from_data_class_typed)
