class Student {
  final String name;
  final String phone;
  final String email;
  final String record;
  final String age;
  final String? horario;
  final String? carrera;
  final String? especialidad;
  final String? promedio;
  final String? sector;

  Student(
    this.name,
    this.phone,
    this.email,
    this.record,
    this.age,
    
    {
    this.horario,
    this.carrera,
    this.especialidad,
    this.promedio,
    this.sector,
  });
}