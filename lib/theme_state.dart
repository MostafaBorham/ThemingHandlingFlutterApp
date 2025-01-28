part of 'theme_cubit.dart';

@immutable
abstract class ThemeState extends Equatable{
  @override
  List<Object?> get props => [];
}

final class ThemeInitial extends ThemeState {}
class LightModeState extends ThemeState{
}

class DarkModeState extends ThemeState{
}