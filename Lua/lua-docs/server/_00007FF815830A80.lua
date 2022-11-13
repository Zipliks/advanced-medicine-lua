---@meta
---@class Barotrauma.MathUtils : System.Object
_G['MathUtils'] = {}

---`Method Public Static`
---@param portion System.Single|number
---@param total System.Single|number
---@return System.Single|number
_G['MathUtils'].Percentage = function(portion, total) end

---`Method Public Static`
---@overload fun(i:System.Int32|integer, n:System.Int32|integer):System.Int32|integer
---@param i System.Single|number
---@param n System.Single|number
---@return System.Single|number
_G['MathUtils'].PositiveModulo = function(i, n) end

---`Method Public Static`
---@param x1 System.Double|number
---@param y1 System.Double|number
---@param x2 System.Double|number
---@param y2 System.Double|number
---@return System.Double|number
_G['MathUtils'].Distance = function(x1, y1, x2, y2) end

---`Method Public Static`
---@overload fun(x1:System.Double|number, y1:System.Double|number, x2:System.Double|number, y2:System.Double|number):System.Double|number
---@param x1 System.Int32|integer
---@param y1 System.Int32|integer
---@param x2 System.Int32|integer
---@param y2 System.Int32|integer
---@return System.Int32|integer
_G['MathUtils'].DistanceSquared = function(x1, y1, x2, y2) end

---`Method Public Static`
---@overload fun(v1:Microsoft.Xna.Framework.Vector2, v2:Microsoft.Xna.Framework.Vector2, amount:System.Single|number):Microsoft.Xna.Framework.Vector2
---@param t System.Single|number
---@return System.Single|number
_G['MathUtils'].SmoothStep = function(t) end

---`Method Public Static`
---@param t System.Single|number
---@return System.Single|number
_G['MathUtils'].SmootherStep = function(t) end

---`Method Public Static`
---@param t System.Single|number
---@return System.Single|number
_G['MathUtils'].EaseIn = function(t) end

---`Method Public Static`
---@param t System.Single|number
---@return System.Single|number
_G['MathUtils'].EaseOut = function(t) end

---`Method Public Static`
---@param v Microsoft.Xna.Framework.Vector2
---@param length System.Single|number
---@return Microsoft.Xna.Framework.Vector2
_G['MathUtils'].ClampLength = function(v, length) end

---`Method Public Static`
---@param rect Microsoft.Xna.Framework.Rectangle
---@param x System.Double|number
---@param y System.Double|number
---@return System.Boolean|boolean
_G['MathUtils'].Contains = function(rect, x, y) end

---`Method Public Static`
---@param value System.Single|number
---@param div System.Single|number
---@return System.Single|number
_G['MathUtils'].Round = function(value, div) end

---`Method Public Static`
---@param value System.Single|number
---@param div System.Single|number
---@return System.Single|number
_G['MathUtils'].RoundTowardsClosest = function(value, div) end

---`Method Public Static`
---@param vector Microsoft.Xna.Framework.Vector2
---@return System.Single|number
_G['MathUtils'].VectorToAngle = function(vector) end

---`Method Public Static`
---@param vector Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Point
_G['MathUtils'].ToPoint = function(vector) end

---`Method Public Static`
---@overload fun(value:System.Single|number):System.Boolean|boolean
---@param vector Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['MathUtils'].IsValid = function(vector) end

---`Method Public Static`
---@param rect Microsoft.Xna.Framework.Rectangle
---@param amount System.Int32|integer
---@return Microsoft.Xna.Framework.Rectangle
_G['MathUtils'].ExpandRect = function(rect, amount) end

---`Method Public Static`
---@param p1 Microsoft.Xna.Framework.Vector2
---@param p2 Microsoft.Xna.Framework.Vector2
---@param p Microsoft.Xna.Framework.Vector2
---@return System.Int32|integer
_G['MathUtils'].VectorOrientation = function(p1, p2, p) end

---`Method Public Static`
---@param from System.Single|number
---@param to System.Single|number
---@param step System.Single|number
---@return System.Single|number
_G['MathUtils'].CurveAngle = function(from, to, step) end

---`Method Public Static`
---@param angle System.Single|number
---@return System.Single|number
_G['MathUtils'].WrapAngleTwoPi = function(angle) end

---`Method Public Static`
---@param angle System.Single|number
---@return System.Single|number
_G['MathUtils'].WrapAnglePi = function(angle) end

---`Method Public Static`
---@param from System.Single|number
---@param to System.Single|number
---@return System.Single|number
_G['MathUtils'].GetShortestAngle = function(from, to) end

---`Method Public Static`
---@param from System.Single|number
---@param to System.Single|number
---@return System.Single|number
_G['MathUtils'].GetMidAngle = function(from, to) end

---`Method Public Static`
---@param a System.Single|number
---@param b System.Single|number
---@param c System.Single|number
---@return System.Single|number
_G['MathUtils'].SolveTriangleSSS = function(a, b, c) end

---`Method Public Static`
---@param angle System.Single|number
---@return System.Byte|integer
_G['MathUtils'].AngleToByte = function(angle) end

---`Method Public Static`
---@param b System.Byte|integer
---@return System.Single|number
_G['MathUtils'].ByteToAngle = function(b) end

---`Method Public Static`
---@param a Microsoft.Xna.Framework.Vector2
---@param b Microsoft.Xna.Framework.Vector2
---@param c Microsoft.Xna.Framework.Vector2
---@param d Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['MathUtils'].LinesIntersect = function(a, b, c, d) end

---`Method Public Static`
---@overload fun(a1:Microsoft.Xna.Framework.Vector2, a2:Microsoft.Xna.Framework.Vector2, b1:Microsoft.Xna.Framework.Vector2, b2:Microsoft.Xna.Framework.Vector2, intersection:Microsoft.Xna.Framework.Vector2-ref):System.Boolean|boolean
---@param a1 Microsoft.Xna.Framework.Vector2
---@param a2 Microsoft.Xna.Framework.Vector2
---@param b1 Microsoft.Xna.Framework.Vector2
---@param b2 Microsoft.Xna.Framework.Vector2
---@param ignoreSegments System.Boolean|boolean
---@param intersection Microsoft.Xna.Framework.Vector2-ref
---@return System.Boolean|boolean
_G['MathUtils'].GetLineIntersection = function(a1, a2, b1, b2, ignoreSegments, intersection) end

---`Method Public Static`
---@param a1 Microsoft.Xna.Framework.Vector2
---@param a2 Microsoft.Xna.Framework.Vector2
---@param axisAligned1 Microsoft.Xna.Framework.Vector2
---@param axisAligned2 Microsoft.Xna.Framework.Vector2
---@param isHorizontal System.Boolean|boolean
---@param intersection Microsoft.Xna.Framework.Vector2-ref
---@return System.Boolean|boolean
_G['MathUtils'].GetAxisAlignedLineIntersection = function(a1, a2, axisAligned1, axisAligned2, isHorizontal, intersection) end

---`Method Public Static`
---@param a1 Microsoft.Xna.Framework.Vector2
---@param a2 Microsoft.Xna.Framework.Vector2
---@param rect Microsoft.Xna.Framework.Rectangle
---@param intersection Microsoft.Xna.Framework.Vector2-ref
---@return System.Boolean|boolean
_G['MathUtils'].GetLineRectangleIntersection = function(a1, a2, rect, intersection) end

---`Method Public Static`
---@param circlePos Microsoft.Xna.Framework.Vector2
---@param radius System.Single|number
---@param point1 Microsoft.Xna.Framework.Vector2
---@param point2 Microsoft.Xna.Framework.Vector2
---@param isLineSegment System.Boolean|boolean
---@param intersection1 System.Nullable
---@param intersection2 System.Nullable
---@return System.Int32|integer
_G['MathUtils'].GetLineCircleIntersections = function(circlePos, radius, point1, point2, isLineSegment, intersection1, intersection2) end

---`Method Public Static`
---@param lineA Microsoft.Xna.Framework.Vector2
---@param lineB Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Single|number
_G['MathUtils'].LineToPointDistance = function(lineA, lineB, point) end

---`Method Public Static`
---@param lineA Microsoft.Xna.Framework.Vector2
---@param lineB Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Single|number
_G['MathUtils'].LineToPointDistanceSquared = function(lineA, lineB, point) end

---`Method Public Static`
---@param lineA Microsoft.Xna.Framework.Point
---@param lineB Microsoft.Xna.Framework.Point
---@param point Microsoft.Xna.Framework.Point
---@return System.Double|number
_G['MathUtils'].LineSegmentToPointDistanceSquared = function(lineA, lineB, point) end

---`Method Public Static`
---@param lineA Microsoft.Xna.Framework.Vector2
---@param lineB Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['MathUtils'].GetClosestPointOnLineSegment = function(lineA, lineB, point) end

---`Method Public Static`
---@param circlePos Microsoft.Xna.Framework.Vector2
---@param radius System.Single|number
---@param rect Microsoft.Xna.Framework.Rectangle
---@return System.Boolean|boolean
_G['MathUtils'].CircleIntersectsRectangle = function(circlePos, radius, rect) end

---`Method Public Static`
---@param center Microsoft.Xna.Framework.Vector2
---@param radius System.Single|number
---@param angle System.Single|number
---@return Microsoft.Xna.Framework.Vector2
_G['MathUtils'].GetPointOnCircumference = function(center, radius, angle) end

---`Method Public Static`
---@param center Microsoft.Xna.Framework.Vector2
---@param radius System.Single|number
---@param points System.Int32|integer
---@param firstAngle? System.Single|number
---@return Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
_G['MathUtils'].GetPointsOnCircumference = function(center, radius, points, firstAngle) end

---`Method Public Static`
---@param vertices System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---@param center Microsoft.Xna.Framework.Vector2
---@return System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2-arr|Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[][]
_G['MathUtils'].TriangulateConvexHull = function(vertices, center) end

---`Method Public Static`
---@param points System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---@return System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
_G['MathUtils'].GiftWrap = function(points) end

---`Method Public Static`
---@param start Microsoft.Xna.Framework.Vector2
---@param luaKey__end Microsoft.Xna.Framework.Vector2
---@param iterations System.Int32|integer
---@param offsetAmount System.Single|number
---@param bounds? System.Nullable*1Microsoft*Xna*Framework*Rectangle
---@return System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2-arr|Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[][]
_G['MathUtils'].GenerateJaggedLine = function(start, luaKey__end, iterations, offsetAmount, bounds) end

---`Method Public Static`
---@param i System.Int64|integer
---@return System.String|string
_G['MathUtils'].GetBytesReadable = function(i) end

---`Method Public Static`
---@param rects System.Collections.Generic.List*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---@param point Microsoft.Xna.Framework.Vector2
_G['MathUtils'].SplitRectanglesHorizontal = function(rects, point) end

---`Method Public Static`
---@param rects System.Collections.Generic.List*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---@param point Microsoft.Xna.Framework.Vector2
_G['MathUtils'].SplitRectanglesVertical = function(rects, point) end

---`Method Public Static`
---@overload fun(a:System.Single|number, b:System.Single|number, epsilon?:System.Single|number):System.Boolean|boolean
---@param a Microsoft.Xna.Framework.Vector2
---@param b Microsoft.Xna.Framework.Vector2
---@param epsilon? System.Single|number
---@return System.Boolean|boolean
_G['MathUtils'].NearlyEqual = function(a, b, epsilon) end

---`Method Public Static`
---@param start Microsoft.Xna.Framework.Vector2
---@param control Microsoft.Xna.Framework.Vector2
---@param luaKey__end Microsoft.Xna.Framework.Vector2
---@param t System.Single|number
---@return Microsoft.Xna.Framework.Vector2
_G['MathUtils'].Bezier = function(start, control, luaKey__end, t) end

---`Method Public Static`
---@param f System.Single|number
---@param p System.Single|number
---@return System.Single|number
_G['MathUtils'].Pow = function(f, p) end

---`Method Public Static`
---@param f System.Single|number
---@return System.Single|number
_G['MathUtils'].Pow2 = function(f) end

---`Method Public Static`
---@param alignment Barotrauma.Alignment
---@return Microsoft.Xna.Framework.Vector2
_G['MathUtils'].ToVector2 = function(alignment) end

---`Method Public Static`
---@param point Microsoft.Xna.Framework.Vector2
---@param target Microsoft.Xna.Framework.Vector2
---@param radians System.Single|number
---@param clockWise? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Vector2
_G['MathUtils'].RotatePointAroundTarget = function(point, target, radians, clockWise) end

---`Method Public Static`
---@param point Microsoft.Xna.Framework.Vector2
---@param radians System.Single|number
---@return Microsoft.Xna.Framework.Vector2
_G['MathUtils'].RotatePoint = function(point, radians) end

---`Method Public Static`
---@overload fun(up:Microsoft.Xna.Framework.Vector2, center:Microsoft.Xna.Framework.Vector2, size:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---@param corners Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
---@param up Microsoft.Xna.Framework.Vector2
---@param center Microsoft.Xna.Framework.Vector2
---@param size Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[]
_G['MathUtils'].GetImaginaryRect = function(corners, up, center, size) end

---`Method Public Static`
---@overload fun(corners:Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[], point:Microsoft.Xna.Framework.Vector2):System.Boolean|boolean
---@param c1 Microsoft.Xna.Framework.Vector2
---@param c2 Microsoft.Xna.Framework.Vector2
---@param c3 Microsoft.Xna.Framework.Vector2
---@param c4 Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['MathUtils'].RectangleContainsPoint = function(c1, c2, c3, c4, point) end

---`Method Public Static`
---@param c1 Microsoft.Xna.Framework.Vector2
---@param c2 Microsoft.Xna.Framework.Vector2
---@param c3 Microsoft.Xna.Framework.Vector2
---@param point Microsoft.Xna.Framework.Vector2
---@return System.Boolean|boolean
_G['MathUtils'].TriangleContainsPoint = function(c1, c2, c3, point) end

---`Method Public Static`
---@param min System.Single|number
---@param max System.Single|number
---@param v System.Single|number
---@return System.Single|number
_G['MathUtils'].InverseLerp = function(min, max, v) end

---`Method Public Static`
---@param ... System.Single|number
---@return System.Single|number
_G['MathUtils'].Min = function(...) end

---`Method Public Static`
---@param ... System.Single|number
---@return System.Single|number
_G['MathUtils'].Max = function(...) end

