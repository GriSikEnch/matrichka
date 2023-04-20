# Matrichka

Простая реализация класса Матрицы с базовыми операциями

## Installation

Склонируйте репозиторий
```bash
$ git clone https://github.com/GriSikEnch/matrichka.git
```

В корневой директории проекта зарустите bundler и rake
```bash
$ bundle install
$ rake install
```

## Usage

### Создание матрицы
```ruby
M = Matr.new([[1,2],[4,5]])
```

### Обращение к матрице по индексу
```ruby
M = Matr.new([[-1,10],[4,77],[-5,-9]])
M[1][0] # => 4
```

### Сложение матриц
```ruby
M = Matr.new([[1, 3], [-2, 3]])
N = Matr.new([[0, 3], [0, 7]])
M + N # => [[1, 6], [-2, 10]]
```

### Умножение матрицы на число
```ruby
M = Matr.new([[1, 3], [-2, 5]])
a = 5
M * a # => [[5, 15], [-10, 25]]
```

### Умножение матриц
```ruby
M = Matr.new([[1, 3], [-2, 3]])
N = Matr.new([[0, 3], [0, 7]])
M * N # => [[0, 24], [0, 15]]
```

### Вычитание строк
```ruby
N = Matr.new([[0, 3], [0, 7]])
N.sub(2, 2, 1) # => [[0, 3], [0, -4]]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/GriSikEnch/matrichka. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/GriSikEnch/matrichka/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Matrichka project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/GriSikEnch/matrichka/blob/master/CODE_OF_CONDUCT.md).
