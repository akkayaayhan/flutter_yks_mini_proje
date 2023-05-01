class Universite {
  final String _universiteAdi;
  final String _universiteTarihi;
  final String _universiteDetayi;
  final String _universiteKucukResim;
  final String _universiteBuyukResim;

  get universiteAdi => this._universiteAdi;

  get universiteTarihi => this._universiteTarihi;

  get universiteDetayi => this._universiteDetayi;

  get universiteKucukResim => this._universiteKucukResim;

  get universiteBuyukResim => this._universiteBuyukResim;

  Universite(
      this._universiteAdi,
      this._universiteTarihi,
      this._universiteDetayi,
      this._universiteKucukResim,
      this._universiteBuyukResim);

  @override
  String toString() {
    return '$_universiteAdi - $_universiteBuyukResim';
  }
}
