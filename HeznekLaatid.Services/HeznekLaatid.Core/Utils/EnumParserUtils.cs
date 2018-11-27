using System;

namespace HeznekLaatid.Core.Utils
{
    public static class EnumParserUtils
    {
        public static T ToEnumType<T>(this int input)
        {
            var result = Enum.Parse(typeof(T), Convert.ToString(input));
            return (T)Convert.ChangeType(result, typeof(T));
        }

        public static T ToEnumType<T>(this string input)
        {
            var result = Enum.Parse(typeof(T), input);
            return (T)Convert.ChangeType(result, typeof(T));
        }
    }
}