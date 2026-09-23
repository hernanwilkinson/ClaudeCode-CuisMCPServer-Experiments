class Point:

    def __init__(self, x, y):
        self._x = x
        self._y = y

    def x(self):
        return self._x

    def y(self):
        return self._y

    def plus(self, a_point):
        return Point(self._x + a_point._x, self._y + a_point._y)

    def times(self, a_number):
        return Point(self._x * a_number, self._y * a_number)

    def inverted(self):
        return self.times(-1)

    def __eq__(self, an_object):
        if not isinstance(an_object, Point):
            return False
        a_point = an_object
        return self._x == a_point._x and self._y == a_point._y

    def __hash__(self):
        return 31 * self._x + self._y

    def __repr__(self):
        return str(self._x) + "@" + str(self._y)
