# Source

- Origin: 10Pines training course "C2 - Diseño Avanzado de Software con Objetos II", directory
  `/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C2 - Diseño Avanzado de Software con Objetos II/`.
- Statement: none on the slides. The online deck has no "Ejercicio" slide for it; slide 86 presents Visitor and slide 117
  ("Ejemplos" of Metaprogramación y Reflexión: "Read Structure: All classes, Does implement?, Design rules?") is the only
  hint; slides 120-126 (rendered to PNG, image only) are class/metaclass diagrams. The statement in `spec.md` is derived
  from the test class. Spanish slide text in `spec-original.md`.
- The exercise exists in the course for other languages: the USB list has `C2-Meta-VisitorRule-Exercise.zip` and
  `-Solution.zip` for Java, C#, Python and Ruby (all Dropbox online-only placeholders of 0 bytes, not read), but for Cuis
  only `C2-Meta-VisitorRule-Exercise-Solution.zip` (Pharo: `C2-VisitorImplementation-Solucion.zip`).
- No `starting/`: the only Cuis file is the solution.
- `solution/Visitor-ImplementationRule.pck.st`: copy of `Cuis/Visitor-ImplementationRule.pck.st` (Cuis 5.0 package, tests,
  fixtures, VisitorRule, MessageEater and two Behavior extension methods).
- Doubts: whether this should be an exercise at all (no statement, no starting code); the apparent bug in
  `verify:for:sentAsParameter:` described in `spec.md`; the package needs `CompiledMethod>>isAbstract` and
  `Behavior>>methodsDo:` from Cuis.
- Nothing was removed (there is no written statement).
