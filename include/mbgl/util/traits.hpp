#pragma once

#include <array>
#include <cstdint>
#include <type_traits>
#include <vector>

namespace mbgl {

template <typename T>
constexpr auto underlying_type(T t) -> typename std::underlying_type_t<T> {
    return typename std::underlying_type_t<T>(t);
}

template <typename T>
struct is_utf16char_like : std::false_type {};
template <typename T>
struct is_utf16char_like<const T> : is_utf16char_like<T> {};
template <>
struct is_utf16char_like<char16_t> : std::true_type {};
template <>
struct is_utf16char_like<wchar_t> : std::true_type {};
template <>
struct is_utf16char_like<uint16_t> : std::true_type {};

template <typename T>
using is_utf16char_like_pointer =
    std::integral_constant<bool, std::is_pointer_v<T> && is_utf16char_like<std::remove_pointer_t<T>>::value>;

template <class OutPointer, class InChar>
OutPointer utf16char_cast(InChar *in)
    requires(is_utf16char_like<InChar>::value && is_utf16char_like_pointer<OutPointer>::value)
{
    return reinterpret_cast<OutPointer>(in);
}

template <typename T>
struct is_linear_container : std::false_type {};

template <typename T, std::size_t N>
struct is_linear_container<std::array<T, N>> : std::true_type {};
template <typename... Ts>
struct is_linear_container<std::vector<Ts...>> : std::true_type {};

} // namespace mbgl
