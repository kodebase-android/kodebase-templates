<?xml version="1.0"?>
<recipe>

  <instantiate from="res/item.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(itemLayoutName)}.xml" />
  <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(itemLayoutName)}.xml" />
</recipe>
