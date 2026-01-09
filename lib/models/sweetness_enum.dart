enum SweetnessEnum {
  noSugar(displayName: 'Առանց շաքար'),
  little(displayName: 'Քիչ'),
  normal(displayName: 'Միջին'),
  sweet(displayName: 'Քաղցր');

  final String displayName;
  const SweetnessEnum({required this.displayName});
}
