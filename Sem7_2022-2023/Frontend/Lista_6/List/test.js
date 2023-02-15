class ClassWithPrivateField {
  _privateField;

  constructor() {
    this._privateField = 42;
  }
}

instance = new ClassWithPrivateField();
console.log(instance)
