import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Informe o total de eleitores: ');
    final voters = int.parse(stdin.readLineSync().toString());

    stdout.write('Informe o total de votos brancos: ');
    final white_votes = int.parse(stdin.readLineSync().toString());

    stdout.write('Informe o total de votos nulos: ');
    final null_votes = int.parse(stdin.readLineSync().toString());

    stdout.write('Informe o total de votos válidos: ');
    final valid_votes = int.parse(stdin.readLineSync().toString());

    print('Relação votos brancos x eleitores: ${(white_votes * 100) / voters}');
    print('Relação votos nulos x eleitores: ${(null_votes * 100) / voters}');
    print('Relação votos válidos x eleitores: ${(valid_votes * 100) / voters}');
  } on FormatException {
    print('Erro ao formatar os valores digitados');
  } catch (e) {
    print('Ocorreu o seguinte erro -> $e');
  }
}
