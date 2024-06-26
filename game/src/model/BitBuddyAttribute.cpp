//
// Created by Ryan Hecht  on 2024-03-04.
//

#include "model/BitBuddyAttribute.h"

#include <QJsonObject>

BitBuddyAttribute::BitBuddyAttribute(BitBuddyAttributeName::UniqueName attributeName, int value)
    : attributeName(attributeName), value(value) {}

QJsonObject BitBuddyAttribute::toJson() const {
  QJsonObject obj;
  obj["attributeName"] = static_cast<int>(attributeName);
  obj["value"] = value;
  return obj;
}

BitBuddyAttribute BitBuddyAttribute::fromJson(const QJsonObject &obj) {
  BitBuddyAttributeName::UniqueName
      attributeName = static_cast<BitBuddyAttributeName::UniqueName>(obj["attributeName"].toInt());
  int value = obj["value"].toInt();
  return BitBuddyAttribute(attributeName, value);
}

BitBuddyAttribute::BitBuddyAttribute(const BitBuddyAttribute &other) = default;

// Copy assignment operator
BitBuddyAttribute &BitBuddyAttribute::operator=(const BitBuddyAttribute &other) {
  if (this != &other) {
    attributeName = other.attributeName;
    value = other.value;
  }
  return *this;
}

BitBuddyAttribute::BitBuddyAttribute(BitBuddyAttribute &&other) noexcept
    : attributeName(other.attributeName), value(other.value) {
  other.attributeName = static_cast<BitBuddyAttributeName::UniqueName>(0); // Resetting to the first name
  other.value = 0; // Resetting to 0
}

BitBuddyAttribute &BitBuddyAttribute::operator=(BitBuddyAttribute &&other) noexcept {
  if (this != &other) {
    attributeName = other.attributeName;
    value = other.value;

    other.attributeName = static_cast<BitBuddyAttributeName::UniqueName>(0); // Resetting to the first name
    other.value = 0; // Resetting to 0
  }
  return *this;
}

BitBuddyAttributeName::UniqueName BitBuddyAttribute::getAttributeName() const {
  return attributeName;
}

void BitBuddyAttribute::setAttributeName(BitBuddyAttributeName::UniqueName attributeName) {
  BitBuddyAttribute::attributeName = attributeName;
}

int BitBuddyAttribute::getValue() const {
  return value;
}

void BitBuddyAttribute::incrementValue(int value) {
  BitBuddyAttribute::value = std::min(BitBuddyAttribute::value + value, MAX_ATTRIBUTE_VALUE); // Cap max value
}

